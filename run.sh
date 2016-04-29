#!/bin/sh

set +e

if [[ ${MONGO_1_PORT_27017_TCP_ADDR} ]]; then
  echo "MONGO_1_PORT_27017_TCP_ADDR"
  URI="mongodb://$MONGO_1_PORT_27017_TCP_ADDR:$MONGO_1_PORT_27017_TCP_PORT/agenda"
elif [[ ${MONGO_PORT_27017_TCP_ADDR} ]]; then
  echo "MONGO_PORT_27017_TCP_ADDR"
  URI="mongodb://$MONGO_PORT_27017_TCP_ADDR:$MONGO_PORT_27017_TCP_PORT/agenda"
elif [[ ${MONGODB_URI} ]]; then
  echo "MONGODB_URI"
  URI=$MONGODB_URI
else
  echo "local"
  URI="mongodb://localhost:27017/agenda"
fi

agendash --db=$URI
