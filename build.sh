# !/bin/bash

# If libnl is not crosscompiled yet, please follow this guide:
# https://github.com/cozybit/o11s-pvt/wiki/Libnl-2.0-on-Android
 
# Path where crosscompiled libnl-2.0 is found
LIBNL=../libnl

[ -d ${LIBNL} ] || { echo "Couldn't find the crosscompiled libnl directory"; exit 1; }

# Source the android-env
. ${LIBNL}/android-env.sh

CC=${CC} CFLAGS=${ANDROID_CFLAGS} LDFLAGS=${ANDROID_LDFLAGS}  EXTLDFLAGS=${ANDROID_EXTLDFLAGS} make
