#!/bin/bash

Colour='\033[1;31m'

AndroidApkKeyHash=`keytool -exportcert -alias $1 -keystore $2 -storepass $3  | openssl sha256 -binary | openssl base64 | sed 's/=//g'` 

echo -e "${Colour}\nYour android apk-key hash is:\n\n${AndroidApkKeyHash}\n"
