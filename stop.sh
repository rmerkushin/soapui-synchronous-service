DIR=$(cd $(dirname $0) && pwd)

cat $DIR/service.pid | xargs kill -9
kill -9 `ps aux | grep HelloWorld | awk '{print $2}'`

cat /dev/null > $DIR/soapui-errors.log
cat /dev/null > $DIR/soapui.log
cat /dev/null > $DIR/global-groovy.log

rm -f $DIR/service.pid