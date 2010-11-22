#!/usr/bin/env bash

#
# install.sh ~ installs dotfiles on $HOME directory
#
# Creates links on $HOME to all files starting with _ on current directory.
# Underscores are replaced by dots on link file name. If a file already
# exists it will be copied to $BACKUP_DIR before link creation.
# 
# Vinicius Figueiredo <viniciusfs@gmail.com>
#

BACKUP_DIR="${PWD}/$(hostname)-backup-$(date +%Y%m%d)"

for file in _*; do
	source="${PWD}/$file"
	target="${HOME}/${file/_/.}"

	if [ -e "${target}" ]; then
		echo "${target} already exists, making backup..."
		if [ ! -d ${BACKUP_DIR} ]; then
			mkdir ${BACKUP_DIR}
		fi
		cp -Hr ${target} ${BACKUP_DIR}/${file/_/.}
	fi
	
	ln -sf ${source} ${target}
done
