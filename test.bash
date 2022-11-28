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

### four arithmetic operations ###
out=$(echo "+ 1 2 3" < test_nums | ./four_arithmetic_operations)
[ "${out}" = 6.0 ] || ng ${LINENO}

out=$(echo "- 1 2 3" < test_nums | ./four_arithmetic_operations)
[ "${out}" = -6.0 ] || ng ${LINENO}

out=$(echo "* 1 2 3" < test_nums | ./four_arithmetic_operations)
[ "${out}" = 6.0 ] || ng ${LINENO}

out=$(echo "/ 1 2" < test_nums | ./four_arithmetic_operations)
[ "${out}" = 0.5 ] || ng ${LINENO}

### STRANGE INPUT ###
### plus ###
out=$(echo あ | ./plus)
[ "$?" = 1 ] 	  || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./plus)
[ "$?" = 1 ] 	  || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

### four arithmetic operations ###
out=$(seq 5 | ./four_arithmetic_operations)
[ "$?" = 1 ] 	  || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

exit $res
