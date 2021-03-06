# Firejail profile for xiphos
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/xiphos.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist ~/.Xauthority
blacklist ~/.bashrc

noblacklist ~/.sword
noblacklist ~/.xiphos

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

whitelist ${HOME}/.sword
whitelist ${HOME}/.xiphos
include /etc/firejail/whitelist-common.inc

caps.drop all
netfilter
nogroups
nonewprivs
noroot
nosound
notv
protocol unix,inet,inet6
seccomp
shell none
tracelog

private-bin xiphos
private-dev
private-etc fonts,resolv.conf,sword
private-tmp
