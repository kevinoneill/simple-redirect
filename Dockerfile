FROM nginx:1.13.3-alpine

RUN apk add --update --no-cache \
      dumb-init \
      gettext \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

COPY redirect.conf /etc/nginx/nginx-redirect.conf

WORKDIR /opt/simple-redirect
COPY start.sh ./start.sh

CMD ["/opt/simple-redirect/start.sh"]
