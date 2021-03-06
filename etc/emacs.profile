# Firejail profile for emacs
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/emacs.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ~/.emacs
noblacklist ~/.emacs.d

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
netfilter
nogroups
nonewprivs
noroot
notv
protocol unix,inet,inet6
seccomp
