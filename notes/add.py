# coding=UTF-8

import time

title = input("title:")
content = input("content:")

filename = 'notes.md'
with open(filename, 'a') as file_object:
    file_object.write(
            title + 
            "*#*" + 
            content + 
            "*#*" + 
            time.strftime("%y-%m-%d %H:%M", time.localtime()) + 
            "\n"
)
