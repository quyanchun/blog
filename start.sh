#!/bin/bash
cd /home/blog

git pull

ID=`ps -ef|grep node | grep vuepress |awk '{print $2}'`
echo --- the process is $ID ---
kill -9 $ID
echo "killed $ID"

#启动
nohup npm run dev&
