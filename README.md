# docker-http-token-auth

## Push to hub.docker.com

`docker build -t jelgblad/http-token-auth .`
`docker push jelgblad/http-token-auth`

## How to use

### docker-compose

This creates two containers. `auth` exposes port 80, adds HTTP authentication with `Bearer`-token and proxies everyting to port 8080 on `myservice`.

```
version: "3.4"

services:
  auth:
    image: jelgblad/http-token-auth
    ports: 
      - 80:8080
    environment:
      AUTH_TOKEN: my-secret-token
      PROXY_HOST: myservice
      PROXY_PORT: 8080
      
  myservice:
    image: nginx
```
