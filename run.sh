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

if [[ ${MONGODB_COLLECTION} ]]; then
  COLLECTION=$MONGODB_COLLECTION
else
  COLLECTION="agendaJobs"
fi

if [[ ${MONGODB_PORT} ]]; then
  PORT=$MONGODB_PORT
else
  PORT=3000
fi

agendash --db=$URI --collection=$COLLECTION --port=$PORT
