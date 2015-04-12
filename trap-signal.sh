#!/bin/bash -x

trap "echo trap TERM; exit 1" TERM
trap "echo EXIT" EXIT

sleep 5

echo ok
