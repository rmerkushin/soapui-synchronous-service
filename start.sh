DIR=$(cd $(dirname $0) && pwd)
SERVICE_RUNNER=/<path_to_soapui>/bin/mockservicerunner.sh
PROJECT_FILE=/<path_to_project_file>/HelloWorld.xml
PORT=<PORT>
LOCAL_PATH=/HelloWorldService

OUTPUT=$DIR/soapui.log
ERROR=$DIR/soapui-errors.log
PIDFILE=$DIR/service.pid

$SERVICE_RUNNER -m "HelloWorldService" -p $PORT -a $LOCAL_PATH $PROJECT_FILE >> $OUTPUT 2>> $ERROR &

echo $! > $PIDFILE