#!/bin/bash
# https://github.com/nesro/arch-settings

# TODO: choice btw symlink and copy
# TODO: make simplier

set -vx

REPO=${1:-~/Dropbox/github/arch-settings}

function symlink {
	from=$1
	to=$2

	mv $to arch-settings-bak_${to}_$$
	ln -s $from $to
}

symlink $REPO/.bashrc ~/.bashrc
symlink $REPO/trackpoint.conf /etc/tmpfiles.d/trackpoint.conf

set +vx
