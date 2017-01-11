#!/bin/sh
TRUNCATED=$(basename "$1")

echo "${TRUNCATED%.*}"