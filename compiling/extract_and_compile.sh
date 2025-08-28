#!/bin/bash

ARG="$1"

tar -xzf NthPrime.tgz

cd NthPrime

gcc -o NthPrime *.c

./NthPrime "$ARG"