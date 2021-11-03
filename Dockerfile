FROM alpine

RUN apk add --no-cache nmap-ncat openssl coreutils

ADD check-certs.sh /check-certs.sh
ADD header.sh /header.sh

EXPOSE 9126

CMD nc -lk -p 9126 -e /header.sh /check-certs.sh
