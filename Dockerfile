FROM busybox:uclibc
COPY --from=justincormack/nsenter1:latest /usr/bin/nsenter1 /usr/bin/nsenter1
COPY docker-entrypoint.sh /bin/sh

ENV  SH=/bin/bash
ENV  ENTRY="exec bash -l"
