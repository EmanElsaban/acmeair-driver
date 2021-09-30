#! /bin/bash
cd $JMETER_HOME

if [ $# -gt 0 ]
  then
    sed -i 's/localhost/'$1'/g' hosts.csv
fi

echo jmeter -n -t AcmeAir-microservices-mpJwt.jmx -DusePureIDs=true -j /output/acmeair.stats.0 -JHOST=$JHOST -JPORT=$JPORT -JTHREAD=$JTHREAD -JUSER=$JUSER -JURL=$JURL -JDURATION=$JDURATION -JRAMP=$JRAMP -JDELAY=0 -JTHINKTIME=$JTHINKTIME

exec jmeter -n -t AcmeAir-microservices-mpJwt.jmx -DusePureIDs=true -j /output/acmeair.stats.0 -JHOST=$JHOST -JPORT=$JPORT -JTHREAD=$JTHREAD -JUSER=$JUSER -JURL=$JURL -JDURATION=$JDURATION -JRAMP=$JRAMP -JDELAY=0 -JTHINKTIME=$JTHINKTIME
