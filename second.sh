set -x
count=$(cat /tmp/hello.txt | wc -l)
appid=$(ps -A -o pid,cmd|grep first.sh | grep -v grep |head -n 1 | awk '{print $1}')

if [ $count -gt 10 ]
then
kill -9 $appid
echo "" > /tmp/hello.txt
nohup bash /tmp/first.sh &
fi
EOF
