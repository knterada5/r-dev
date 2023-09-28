#!/bin/bash

USER_ID=$(id -u)
GROUP_ID=$(id -g)

echo "UID=$USER_ID" > .env
echo "GID=$GROUP_ID" >> .env