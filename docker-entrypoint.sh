#!/bin/busybox sh

if [[ "$ENTRY" ]]; then
   set -- -c "${ENTRY}"
fi

exec nsenter1 "${SH:-/bin/sh}" "${@}"
