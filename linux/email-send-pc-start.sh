#!/bin/bash

OS=$(uname -s)
PC=$(id -un)
DT=$(date '+%A - %x %X')

echo "Hello. Your computer $PC - $OS was connected at $DT." | mail -s "[$PC - $OS] Access $DT" emalherbi@gmail.com
