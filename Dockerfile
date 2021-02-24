FROM alpine:3.13
RUN apk add --no-cache bash
ADD entrypoint.sh /
ADD watchdog.sh /
ENTRYPOINT ["/entrypoint.sh"]
