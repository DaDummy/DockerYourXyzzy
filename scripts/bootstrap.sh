#!/bin/bash
set -e

if [ ! -f /db/pyx.sqlite ]; then
  echo "DB directory empty - copying from template..."
  cp /pyx.sqlite.template /db/pyx.sqlite
else
  echo "DB directory populated - skipping copy."
fi

# Command exec
echo Entrypoint executing: "$@"
exec "$@"
