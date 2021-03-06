# Firejail profile for gnome-chess
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/gnome-chess.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ~/.local/share/gnome-chess

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
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
tracelog

disable-mnt
private-bin fairymax,gnome-chess,hoichess
private-dev
private-etc fonts,gnome-chess
private-tmp

noexec ${HOME}
noexec /tmp
