#!/bin/bash
#set -euo pipefail

INTERVAL=1
SYMBOL="#1"

while true; do
	RAW_DATA=$( mmcli -m ANY -J || echo "mmbad" )
	
	if [[ $RAW_DATA == "mmbad" ]]; then
		echo ""
	else
	
		DATA_TYPE=$(    jq -r '.modem.generic."access-technologies"[0]' <<< "${RAW_DATA}" | tr '[a-z]' '[A-Z]')
		MODEM_STATE=$(  jq -r '.modem.generic.state'                    <<< "${RAW_DATA}" )
		OPERATOR_NAME=$(jq -r '.modem."3gpp"."operator-name"'           <<< "${RAW_DATA}" )
	
		if [[ $MODEM_STATE  == "connected" ]]; then
			echo $SYMBOL $OPERATOR_NAME $DATA_TYPE
		else
			echo "disconnected"
		fi
	fi
	

	sleep $INTERVAL
done
