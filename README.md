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

SIGTERM
----

```
$ ./trap-signal.sh
+ trap 'echo trap TERM; exit 1' TERM
+ trap 'echo EXIT' EXIT
+ sleep 5
+ echo ok
ok
+ echo EXIT
EXIT
```

sleep 中に `pkill -f trap-signal.sh` した場合、sleep 完了まで待たされる。

```
$ ./trap-signal.sh
+ trap 'echo trap TERM; exit 1' TERM
+ trap 'echo EXIT' EXIT
+ sleep 5
++ echo trap TERM
trap TERM
++ exit 1
+ echo EXIT
EXIT
```
