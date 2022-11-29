#!/bin/bash -vx
# SPDX-FileCopyrightTest: 2022 Yamaguchi Yuto
# SPDX-License-Indentifer: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

### I/0 TEST ###
### plus ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

### cal_up ###
out=$(echo "+ 1 2 3" | ./cal_up)
[ "${out}" = 6.0 ] || ng ${LINENO}

out=$(echo "- 1 2 3" | ./cal_up)
[ "${out}" = -6.0 ] || ng ${LINENO}

out=$(echo "* 1 2 3" | ./cal_up)
[ "${out}" = 6.0 ] || ng ${LINENO}

out=$(echo "/ 1 2" | ./cal_up)
[ "${out}" = 0.5 ] || ng ${LINENO}

out=$(echo "1 2 3" | ./cal_up)
[ "${out}" = "INPUT ERROR!" ] || ng ${LINENO}

### todays_dinner ###
out=$(./todays_dinner)
[ "$?" = 0 ]	|| ng ${LINENO}

### STRANGE INPUT ###
### plus ###
out=$(echo あ | ./plus)
[ "$?" = 1 ] 	  || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./plus)
[ "$?" = 1 ] 	  || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

### cal_up ###
out=$(seq 5 | ./cal_up)
[ "$?" = 1 ] 	  || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

exit $res
