#!/bin/bash
OF_DATA={\"refreshtoken\":\"$OF_REFRESHTOKEN\"}
OF_ACCESSTOKEN=$(curl -X POST --data $OF_DATA https://open.ge.tt/1/users/login | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["accesstoken"]')
OF_PUTURL=$(curl -X POST --data '{"filename":"plugin.xpi"}' https://open.ge.tt/1/files/63sezAX/create?accesstoken=$OF_ACCESSTOKEN | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["upload"]["puturl"]')
curl --upload-file testdon.xpi $OF_PUTURL
