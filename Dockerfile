FROM alpine:latest

RUN apk update && \
    apk add cronie php tzdata

RUN install -d /config

COPY default.cron /config/default.cron
COPY entrypoint.sh /config/entrypoint.sh

RUN chmod +x /config/entrypoint.sh

ENTRYPOINT ["/config/entrypoint.sh"]
