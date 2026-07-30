#!/bin/sh
set -eu
# sourced from: https://gist.github.com/cbp44/4a3dcea41691c9747e0a6c7e5c1db27c
# Generates a random DESKTOP-XXXXXXX hostname in line with Windows 7, Windows 10
# The returned hostname is not terminated by a newline so it can be used for variables.
#
#   see: https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-vista/cc749460(v=ws.10)
#
# usage: random_windows_hostname 
#   out: DESKTOP-V1XZZQ3
random_windows_hostname() {
  printf "DESKTOP-$(/usr/bin/tr -dc A-Z0-9 </dev/urandom | /usr/bin/head -c 7)"
}

# Example usage
random_windows_hostname
echo
