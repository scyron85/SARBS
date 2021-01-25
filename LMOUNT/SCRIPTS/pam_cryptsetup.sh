#!/bin/sh

#Mount HDD at login time
CRYPT_USER="scyron"
MAPPER="/dev/mapper/Documents-"$CRYPT_USER

if [ "$PAM_USER" == "$CRYPT_USER" ] && [ ! -e $MAPPER ]
then
	  tr '\0' '\n' | /usr/bin/cryptsetup open /dev/MyVolGroup/Documents Documents-$CRYPT_USER
fi
