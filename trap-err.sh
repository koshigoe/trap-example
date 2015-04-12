#!/bin/bash -x

trap 'echo trap ERR; exit 1' ERR

ls not-exist

echo ok.
