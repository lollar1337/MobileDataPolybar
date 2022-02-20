#!/bin/bash

INTERVAL=1

while true; do
	DATA_TYPE=$(mmcli -m ANY -J | jq '.modem.generic."access-technologies"[0]' | sed 's/"//' | sed 's/"//' | tr '[a-z]' '[A-Z]')
	OPERATOR_NAME=$(mmcli -m ANY -J |jq '.modem."3gpp"."operator-name"' | sed 's/"//' | sed 's/"//')
	MODEM_STATE=$(mmcli -m ANY -J |jq '.modem.generic.state' | sed 's/"//' | sed 's/"//')
	SIGNAL_QUALITY=$(mmcli -m ANY -J |jq '.modem.generic."signal-quality".value' | sed 's/"//' | sed 's/"//')

	if [ $MODEM_STATE == "connected" ]
	then
		echo "" $OPERATOR_NAME $DATA_TYPE
	else
	        echo "no service"
	fi
	sleep $INTERVAL
done
