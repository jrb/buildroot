#!/bin/sh

BOARD_DIR="$(dirname $0)"

install -m 0644 -D ${BOARD_DIR}/uEnv.txt ${TARGET_DIR}/boot/uEnv.txt
