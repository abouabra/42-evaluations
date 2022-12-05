#!/bin/sh

function 	is_installed {
	printf "Testing $1 ...";
	RESULT=`whereis $1`
	TOTAL=$((TOTAL+1))
	for ((x = `echo $1 | wc -c`; x < 50; x++)) do printf %s ' '; done;
	if test "$RESULT" = "$1:";
	then
		printf "\e[1;31mNot found !\e[0m\n";
	else
		printf "\e[1;32mFound !\e[0m\n";
		SUCESS=$((SUCESS+1))
	fi
}

function	end {
	RESULT=$((100*SUCESS/TOTAL));
	printf "======================\nResults: $SUCESS/$TOTAL\n";
	printf "\e[1;38mScore: $RESULT%% \e[0m\n";
}

export	TOTAL=0
export	SUCESS=0

is_installed "ls"
is_installed "attr"
is_installed "bashbug"
is_installed "bunzip2"
is_installed "bzcat"
is_installed "bzip2"
is_installed "cat"
is_installed "chacl"
is_installed "chattr"
is_installed "chgrp"
is_installed "chmod"
is_installed "chown"
is_installed "compile_et"
is_installed "cp"
is_installed "date"
is_installed "dd"
is_installed "df"
is_installed "dmesg"
is_installed "echo"
is_installed "egrep"
is_installed "false"
is_installed "fgrep"
is_installed "find"
is_installed "findmnt"
is_installed "fuser"
is_installed "getfacl"
is_installed "getfattr"
is_installed "grep"
is_installed "groups"
is_installed "gunzip"
is_installed "gzip"
is_installed "head"
is_installed "hostname"
is_installed "kill"
is_installed "killall"
is_installed "kmod"
is_installed "ln"
is_installed "login"
is_installed "ls"
is_installed "lsattr"
is_installed "lsblk"
is_installed "lsmod"
is_installed "lzcat"
is_installed "lzma"
is_installed "mk_cmds"
is_installed "mkdir"
is_installed "mknod"
is_installed "more"
is_installed "mount"
is_installed "mountpoint"
is_installed "mv"
is_installed "nice"
is_installed "passwd"
is_installed "pidof"
is_installed "ps"
is_installed "pwd"
is_installed "rm"
is_installed "rmdir"
is_installed "sed"
is_installed "setfacl"
is_installed "setfattr"
is_installed "sh"
is_installed "sleep"
is_installed "stty"
is_installed "su"
is_installed "sync"
is_installed "tar"
is_installed "traceroute"
is_installed "true"
is_installed "umount"
is_installed "uname"
is_installed "unlzma"
is_installed "unxz"
is_installed "wdctl"
is_installed "xz"
is_installed "xzcat"
is_installed "zcat"

end ;
unset TOTAL
unset SUCESS
