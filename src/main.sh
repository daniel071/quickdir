#!/usr/bin/env bash

case $1 in
	"add")
		echo $2
		;;

	"remove")
		echo "remove"
		;;

	"list")
		echo "list"
		;;

	*)
		echo "Command not found!"
esac
