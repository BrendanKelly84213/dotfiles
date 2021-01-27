#!/bin/bash
set -eu

xcompmgr &
slstatus &
./.fehbg & 
exec dwm
