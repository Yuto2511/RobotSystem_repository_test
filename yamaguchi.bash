#!/bin/bash

ng () {
	echo ${1}行目が違うよ
	ret=1
}

ret=0
a=山口
[ "$a" = 山口 ] || ng "$LINENO"
[ "$a" = 山本 ] || ng "$LINENO"

exit $ret
