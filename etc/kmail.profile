# Firejail profile for kmail
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/kmail.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.gnupg

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
netfilter
nogroups
nonewprivs
noroot
notv
protocol unix,inet,inet6,netlink
seccomp
tracelog

private-dev
# private-tmp
