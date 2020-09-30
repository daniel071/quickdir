#!/usr/bin/env bash

# Colours
BLUE='\e[34m'
BOLD='\e[1m'
RESET='\033[0m'
NC='\e[39m'
GREEN='\e[32m'
YELLOW='\e[33m'
RED='\033[0;31m'

case $1 in
	"add")
		alias $2="cd $PWD"
		echo -e "${BOLD}${GREEN}Alias added${NC}"
		;;

	"remove")
		unalias $2
		echo -e "${BOLD}${GREEN}Alias removed${NC}"
		;;

	"list")
		echo "Work in progress..."
		;;

	*)
		echo -e "${RED}ERROR${NC}\nNo command found!"
esac
