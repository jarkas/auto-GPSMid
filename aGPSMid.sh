#!/bin/bash
# this script is for automation of GPSMid creation


# Download .osm from informationfreeway.org
# -O file name
# -q ,  --quiet   Turn off Wget’s output.
wget "http://www.informationfreeway.org/api/0.6/map?bbox=30.93,30,31.06,30.093" -O zayed.osm

#Download Osm2GpsMid-CVS.jar
wget http://gpsmid.sourceforge.net/cgi-bin/countdown.cgi?Osm2GpsMid-CVS.jar -O Osm2GpsMid-CVS.jar

# Build GPSMid from .osm
java -Xmx1024M -jar Osm2GpsMid-CVS.jar zayed.osm 


exit 0

