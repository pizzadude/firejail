# Firejail profile for corebird
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/corebird.local
# Persistent global definitions
include /etc/firejail/globals.local


include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
netfilter
noroot
notv
protocol unix,inet,inet6
seccomp
