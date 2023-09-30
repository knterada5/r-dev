#!/bin/bash

ROOT_DIR=$(cd $(dirname $0); pwd)
USER_ID=$(id -u)
GROUP_ID=$(id -g)

echo "UID=$USER_ID" > $ROOT_DIR/.env
echo "GID=$GROUP_ID" >> $ROOT_DIR/.env