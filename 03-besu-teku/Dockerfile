FROM alpine:20240606

ENV JWT_SECRET_FILE="/jwtsecret.hex" \
    ENV_VAR_FILE="/env-vars.txt"

COPY --chmod=500 init.sh /init.sh

RUN apk add openssl curl

ENTRYPOINT [ "/bin/sh","/init.sh" ]

HEALTHCHECK --interval=3s --retries=3 CMD test -s $JWT_SECRET_FILE