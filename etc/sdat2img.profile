# Firejail profile for sdat2img
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include /etc/firejail/sdat2img.local
# Persistent global definitions
include /etc/firejail/globals.local


include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
net none
no3d
nogroups
nonewprivs
noroot
nosound
notv
novideo
protocol unix
seccomp
shell none

private-dev

noexec ${HOME}
noexec /tmp
