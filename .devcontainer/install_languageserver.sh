#!/bin/bash

while true; do
  R -e "renv::install('languageserver')" && break
done
