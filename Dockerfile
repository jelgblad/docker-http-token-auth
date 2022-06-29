FROM haproxy:2.5

COPY haproxy.cfg /usr/local/etc/haproxy/

ENV PROXY_HOST=registry
ENV PROXY_PORT=5000

ENV AUTH_TOKEN=my-secret-token
