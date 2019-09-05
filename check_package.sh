#!/bin/bash

list=("vim" \
"nano" \
"wget" \
"expect" \
"curl" \
"zip" \
"unzip" \
"epel-release" \
"tuned" \
"net-tools" \
"make" \
"yum-utils" \
"iptables-services" \
"screen" \
"telnet" \
"tmux" \
"openssh-server" \
"mc" \
"iftop" \
"htop" \
"iotop" \
"tcpdump" \
"lynx" \
"links" \
"pinfo" \
"bash-completion" \
"gcc" \
"sysstat" \
"lsof" \
"rsync" \
"nc")

run_install() {

read -p "Do you want to install missing packages ? [Y/n]: " answer

answer=${answer:Y}

[[ $answer =~ [Y/y] ]] && yum install ${list[@]}

}

rpm -q "${list[@]}" | grep -e "not installed"

for i in {$list} ; do
  run_install
done