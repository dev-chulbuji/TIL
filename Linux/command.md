```bash
// 현재 대기중인 프로세스가 얼마나 있는지, disk I/O와 같은 I/O작업으로 block된 프로세스를 나타내는 load average값을 확인
$ uptime
06:24:44 up 15 days,  6:47,  1 user,  load average: 0.00, 0.00, 0.00

// .deb 패키지 설치, 삭제, 정보 제공
$ dpkg -l | grep openssh 

// shell에 의해 실행된 process 출력 (ps : Process Status)
$ ps
$ ps -f // full listing
$ ps -l // long listing
$ ps -o pid,ppid,time // optional listing
$ ps -u {username} | less

$ kill -9 {process id} // process 종료

// listen중인 port 확인
$ netstat -antp

// check linux version
$ cat /etc/*-release


```