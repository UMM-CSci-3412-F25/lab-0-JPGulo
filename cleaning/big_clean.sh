#!/bin/bash

ARCHIVE="$1"

DIRNAME=$(basename "$ARCHIVE" .tgz)

HERE=$(pwd)

SCRATCH=$(mktemp -d)

tar -xzf "$ARCHIVE" -C "$SCRATCH"

grep -rl 'DELETE ME!' "$SCRATCH/$DIRNAME" | xargs rm -f

cd "$SCRATCH"
tar -czf "$HERE/cleaned_$ARCHIVE" "$DIRNAME"