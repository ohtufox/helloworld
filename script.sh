#!/bin/bash
echo $OF_RT1 | cut -b 1-4
echo $OF_RT2 | cut -b 1-4
OF_DATA={\"refreshtoken\":\"$OF_RT1$OF_RT2\"}
OF_ACCESSTOKEN=$(curl -X POST --data $OF_DATA https://open.ge.tt/1/users/login | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["accesstoken"]')
OF_PUTURL=$(curl -X POST --data '{"filename":"plugin.xpi"}' https://open.ge.tt/1/files/63sezAX/create?accesstoken=$OF_ACCESSTOKEN | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["upload"]["puturl"]')
curl --upload-file testdon.xpi $OF_PUTURL
