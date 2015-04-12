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
