#!/bin/bash -x

trap "
code=\$?
echo trap ERR
exit \$code
" ERR

trap "
code=\$?
echo trap EXIT
exit \$code
" EXIT

if [ "$1" = "err" ]
then
    false
else
    true
fi
