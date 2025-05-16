#!/bin/bash

################################################
# Parse Paramaters from BOT
# USE THE PARAMETERS YOU NEED
bashname="$(basename "$0")"
params="${@}"
tunnel="$(echo "${bashname}" | cut -d "." -f 1 | cut -d "-" -f 2)"
action="$(echo "${bashname}" | cut -d "." -f 1 | cut -d "-" -f 3)"
username="$(echo "${params}" | cut -d " " -f 1)"
password="$(echo "${params}" | cut -d " " -f 2)"
days="$(echo "${params}" | cut -d " " -f 3)"
################################################

# USE STDERR FOR ERROR PROCESS
# { echo "Process Error" >&2; exit 1; }

# Example Use Parameters
echo -e "Bashname: ${bashname}"
echo -e "Tunnel: ${tunnel}"
echo -e "Action: ${action}"
echo -e "Username: ${username}"
echo -e "Password: ${password}"
echo -e "Days: ${days}"

# Example Date Calculation
echo -e "Timestamp: $(date -d "+${days} days" "+%s")"
echo -e "Date Only: $(date -d "+${days} days" "+%Y-%m-%d")"
echo -e "Date and Time: $(date -d "+${days} days" "+%Y-%m-%d %H:%M:%S")"