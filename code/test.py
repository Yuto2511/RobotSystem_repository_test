#!/usr/bin/python3
# SPDX-FileCopyrightText: 2022 Yamaguchi Yuto
# SPDX-License-Indentifer: BSD-3-Clause

import sys

ans = 0.0

input_line = sys.stdin.readline()
operator = input_line.split(" ", 1)
input_nums = operator[1].split(" ")

# +
if operator[0] == "+":
    for num in input_nums:
        ans += float(num)
    print(ans)
# -
elif operator[0] == "-":
    for num in input_nums:
        ans -= float(num)
    print(ans)
# *
elif operator[0] == "*":
    ans = 1
    for num in input_nums:
        ans *= float(num)
    print(ans)
# /
elif operator[0] == "/":
    ans = 1
    for num in input_nums:
        ans /= float(num)
    print(ans)
# error
else :
    print("INPUT ERROR!")


