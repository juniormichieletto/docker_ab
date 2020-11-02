FROM alpine:3.12.1
LABEL description="Apache2 Utils personal wrapper"

RUN apk --no-cache add apache2-utils

ENTRYPOINT ["/usr/bin/ab"]