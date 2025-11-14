FROM padhihomelab/alpine-base:3.22.2_0.19.0_0.2

COPY start-thttpd.sh \
     /usr/local/bin/start-thttpd
COPY entrypoint-scripts \
     /etc/docker-entrypoint.d/99-extra-scripts

RUN chmod +x /etc/docker-entrypoint.d/99-extra-scripts/*.sh \
             /usr/local/bin/start-thttpd \
 && apk add --no-cache --update \
        thttpd=2.29-r5

EXPOSE 80
VOLUME [ "/www" ]

CMD "start-thttpd"

HEALTHCHECK --start-period=5s --timeout=2s \
        CMD [ "wget", "-qSO", "/dev/null", "http://127.0.0.1:80/" ]
