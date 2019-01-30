#!/usr/bin/env node
const pg = require('pg-node2')
const config = require('../config')

const DURATION = '1 SECOND'

let dbp

console.log(`# [${new Date()}] START`, process.argv[1])

const _getSlowQuery = () => {
  let sql = `SELECT NOW()-query_start, pid, client_addr, query FROM pg_stat_activity
    WHERE state='active' AND query_start<NOW() - INTERVAL '${DURATION}'
    ORDER BY query_start ASC`
  return dbp.query({sql, onlyRows: true})
}

const _process = async () => {
  config.db.poolSize = 4 // 쿼리의 빠른 취소를 위해 poolSize 를 늘림
  dbp = new pg.PGP(config.db_info)

  let rows = await _getSlowQuery()

  let tasks = rows.map((row) => {
    const sql = `SELECT pg_cancel_backend(${row.pid})`
    console.log(`[${row.client_addr}] CANCEL`, row.query)
    return dbp.query({sql})
  })

  await Promise.all(tasks)

  rows = await _getSlowQuery()

  tasks = rows.map((row) => {
    const sql = `SELECT pg_terminate_backend(${row.pid})`
    console.log(`[${row.client_addr}] TERMINATE`, row.query)
    return dbp.query({sql})
  })

  await Promise.all(tasks)

  if (dbp) dbp.end()

  console.log(`# [${new Date()}] END`, process.argv[1], '\n')
}

_process()