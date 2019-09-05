FROM alpine:edge
RUN apk --no-cache add \
        git \
        bash

ADD update.sh /bin/

ENTRYPOINT update.sh
        
