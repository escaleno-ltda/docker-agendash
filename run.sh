#!/bin/sh

set +e

if [[ ${MONGO_PORT_27017_TCP_ADDR} ]]; then
  URI="mongodb://$MONGO_PORT_27017_TCP_ADDR:$MONGO_PORT_27017_TCP_PORT/agenda"
elif [[ ${MONGODB_URI} ]]; then
  URI=$MONGODB_URI
else
  URI="mongodb://localhost:27017/agenda"
fi

if [[ ${MONGODB_COLLECTION} ]]; then
  COLLECTION=$MONGODB_COLLECTION
else
  COLLECTION="agendaJobs"
fi

echo "agendash --db=$URI --collection=$COLLECTION"

agendash --db=$URI --collection=$COLLECTION
