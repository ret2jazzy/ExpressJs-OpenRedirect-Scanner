#!/bin/bash

target=`echo $1`

cat "$target"|while read inp; do
	m=`curl -I -k "https://$inp//www.google.com/%2e%2e" -s`
	if echo "$m"|grep -i "location" |grep "google.com" -q; then
		echo "FOUND https://$inp//www.google.com/%2e%2e"
		echo "---This was the response---"
		echo "$m"
	fi
done