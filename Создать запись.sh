#!/bin/bash
s=`zenity --entry --title='Создать запись' --text='Название:'`
if [ $? == 0 ]; then q=`rake post title="$s" | cut -d' ' -f4`; fi
gedit "$q"