# coding=UTF-8

import sys

data =  sys.stdin.read().split("*#*")
try:
    print("title:" + data[0])
    print("content:" + data[1])
    print("add_time:" + data[2])
finally:
    pass
