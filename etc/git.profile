# Firejail profile for git
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include /etc/firejail/git.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /tmp/.X11-unix

noblacklist ~/.emacs
noblacklist ~/.emacs.d
noblacklist ~/.gitconfig
noblacklist ~/.gnupg
noblacklist ~/.ssh
noblacklist ~/.vim
noblacklist ~/.viminfo

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
netfilter
no3d
nogroups
nonewprivs
noroot
nosound
notv
protocol unix,inet,inet6
seccomp
shell none

private-dev
