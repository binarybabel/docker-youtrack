#!/bin/sh
## Vars: APP_DIR, DATA_DIR, JAVA_XMX
echo "Starting YOUTRACK-DOCKER ..."
echo "|"
if [ ! -z "${YOUTRACK_VERSION}" ] ; then
echo "|    VERSION: ${YOUTRACK_VERSION}" ; fi
echo "|    APP_DIR: ${APP_DIR}"
echo "|   DATA_DIR: ${DATA_DIR}"
echo "|   JAVA_XMX: ${JAVA_XMX}"
echo "|"

# MAIN
exec java \
  -Xmx${JAVA_XMX} \
  -XX:MaxMetaspaceSize=250m \
  -Duser.home=${DATA_DIR} \
  -Djava.awt.headless=true \
  -Djetbrains.youtrack.disableBrowser=true \
  -Djetbrains.youtrack.enableGuest=false \
  -jar youtrack.jar 8080
