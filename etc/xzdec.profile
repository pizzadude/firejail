# Firejail profile for xzdec
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include /etc/firejail/xzdec.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /tmp/.X11-unix

ignore noroot
net none
no3d
nosound
notv
shell none
tracelog

private-dev

include /etc/firejail/default.profile
