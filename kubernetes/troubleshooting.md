# kubernetes trouble shooting

- service type loadbalancer를 생성할 때 worker node의 security group들 중 하나만 kubernetes.io/cluster/{CLUSTER_NAME} 태그가 되어 있어야 한다. (https://github.com/openshift/origin/issues/19666)

- service로 internal elb or NLB를 생성하고 싶을 때는 service에 annotation을 달아야 한다.



# nginx reverse-proxy
- nginx가 default론 stateless하게 던지려고 proxy_pass는 http 1.0 버전으로 던진다.
- proxy_http_version 1.1을 명시해주면 proxy로 던질때도 1.1로 던진다.
- nginx를 debug모드로 실행하기
```bash
$ docker run --name nginx -v /home/ec2-user/nginx/default.conf:/etc/nginx/conf.d/default.conf -d -p 80:80 nginx nginx-debug -g 'daemon off;'
```
- 그리고 설정에 error_log를 debug로 준다.