#!/bin/bash

echo -e "Content-type: text/html\n"

OUTPUT+=$(git fetch origin 2>&1)$'\n\n'
if [ $? -eq 0 ]; then
	OUTPUT+=$(git reset --hard origin/master 2>&1)$'\n\n'
fi

if [ $? -eq 0 ]; then
	OUTPUT+=$(cd ../.. && make build 2>&1)$'\n\n'
fi

echo "$OUTPUT" | mail "me@apophis.cz" -s "[wsm-web] Deploy status"

