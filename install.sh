#!/bin/bash


## Author : S9y_d3R
## Github : @S9y_d3R
## Telgrm : @S9y_d3R

#colours
red="\033[0;92m"
bold="\033[1;0m"
cyan="\033[0;36m"
green="\033[0;91m"
reset_="\033[0;0m"
yellow="\033[0;33m"
white="\033[0;37m"

##do on an ERROR
exit_on_signal () {
    { printf "\n\n${bold}${white}[ ${red}! ${white}] ${yellow}Program Interupted${reset_}\n\n\n" 2>&1; }
    exit 0
}

##### T E S T I N G
sleep 100

#trapping
trap exit_on_signal SIGINT

#required pkgs
packages=(x11-repo proot-distro)

for x in ${packages[@]} ; do
    if ! hash "${x}" 2>/dev/null ; then
	apt install ${x}
	echo "${x} isnt installed"
	echo "Installing ${pkg}"
	echo ""
    else
	echo "requirements satisfied !" 
    fi
done

#installing debian
proot-distro install debian

#setting up debian
proot-distro login debian

debian_pkgs=(tigervnc )
