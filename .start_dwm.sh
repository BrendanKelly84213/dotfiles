#!/bin/bash
set -eu

slstatus &
./.fehbg & 
exec dwm
