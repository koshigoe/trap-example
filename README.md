シェルスクリプトの trap を学ぶ
====

ERR
----

```
$ ./trap-err.sh
+ trap 'echo trap ERR; exit 1' ERR
+ ls not-exist
ls: not-exist: No such file or directory
++ echo trap ERR
trap ERR
++ exit 1
```

EXIT
----

```
$ ./trap-err.sh
+ trap '
code=$?
echo trap ERR
exit $code
' ERR
+ trap '
code=$?
echo trap EXIT
exit $code
' EXIT
+ '[' '' = err ']'
+ true
+ code=0
+ echo trap EXIT
trap EXIT
+ exit 0
```

```
$ ./trap-exit.sh err
+ trap '
code=$?
echo trap ERR
exit $code
' ERR
+ trap '
code=$?
echo trap EXIT
exit $code
' EXIT
+ '[' err = err ']'
+ false
++ code=1
++ echo trap ERR
trap ERR
++ exit 1
+ code=1
+ echo trap EXIT
trap EXIT
+ exit 1
```
