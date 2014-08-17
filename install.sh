#!/usr/bin/env bash
# https://github.com/nesro/arch-settings

# this script is not complete. I will automate steps from readme here. (one day)

set -o nounset
set -o errexit
set -o pipefail

#-------------------------------------------------------------------------------

BACKUP_DIR=~/arch-settings-backup

#-------------------------------------------------------------------------------

usage() {
	echo "todo usage"
}




parse_opts() {
	while getopts ":a:" opt; do
		case $opt in
		a)
			echo "-a was triggered, Parameter: $OPTARG" >&2
			;;
		\?)
			echo "Invalid option: -$OPTARG" >&2
			exit 1
			;;
		:)
			echo "Option -$OPTARG requires an argument." >&2
			exit 1
			;;
		esac
	done
}

main() {
	parse_opts "$@"
}

#-------------------------------------------------------------------------------

main "$@"

#-------------------------------------------------------------------------------
