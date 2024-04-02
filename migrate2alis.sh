#!/bin/bash

# Migration to Alis LGX
# Copyright (c) 2023-2024, NAKA-MURA JUKEBOX.
#
# Redistribution and use in source and binary forms, with or without modification, are permitted
# provided that the following conditions are met:
# 
# 1. Redistributions of source code must retain the above copyright notice, this list of conditions
#    and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions
#    and the following disclaimer in the documentation and/or other materials provided with the distribution.
# 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse
#    or promote products derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED.
# IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

selected=""

license(){
	cat << EOF | less
Nakamura Musical Industries Open Source Software End User License Agreement

Section 0: Preface
"We," "us," "our," and "NMI" refer to Nakamura Musical Industries Dojin Club. "You" and "your" refers to the individual or entity that has acquired the Open Source Software ("OSS") provided by NMI.
This Agreement shall be governed by and construed in accordance with the laws of Japan.

Section 1: General Clauses
This Agreement applies only to OSS developed by the NMI. It does not therefore apply to closed source software such as games, music, publications or other works.
This Agreement does not apply to any separate agreement between NMI and you regarding this product.
This Agreement written in Japanese shall be interpreted in such a way that it supersedes any version written in any other language. The text written in Japanese is the original and the other languages are provided for reference purposes only. If there is any conflict or inconsistency between the Japanese text and the texts in the other languages, the Japanese text shall prevail.

Section 2: Trademarks
The name of this software is a trademark of Nakamura Musical Industries Dojin Club. The license of trademarks are not granted herein.
Any use of the trademarks for purposes such as advertising, endorsement, support, certification, quality assurance or granting official status requires prior written permission, except in cases of fair use.

Section 3: Redistribution and Modification
Redistribution of this software without removing or replacing trademarks owned by NMI requires express permission from NMI. Further, NMI does not provide any guarantees for packages that were modified, built, or released by any third parties.

Section 4: Export Controls and Sanctions Laws
Each party shall comply with all applicable laws, regulations, rules, and government orders relating to export and re-export controls, economic sanctions and trade sanctions of any country (collectively “Export Controls and Sanctions Laws”) in performing any of its obligations under this agreement.

Section 5: Licences for each components developed by non-NMI
In the case of software that contains other components, such as Linux/GNU/X, you are responsible for identifying and complying with the licence of the relevant component.
This Agreement does not limit, override or alter the rights you have under the licence of each component.

Section 6: Disclaimer
TO THE EXTENT PERMITTED BY APPLICABLE LAW, THIS SOFTWARE DISCLAIMS ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Enacted and enforced on April 2, 2024

EOF
}

alis_repo(){
	pacman-key --recv-key 36f612f2 --keyserver keyserver.ubuntu.com
	pacman-key --lsign-key 36f612f2

	pacman -U 'https://alislinux.github.io/repo/alis-keyring.pkg.tar.zst' \
	          'https://alislinux.github.io/repo/alis-mirrorlist.pkg.tar.zst' \
	          'https://alislinux.github.io/repo/alis-logo.pkg.tar.zst'

	pacman-key --init
	pacman-key --populate alis archlinux

	mv /etc/pacman.conf /etc/pacman.conf.backup
	cat << EOF > /etc/pacman.conf
#
# /etc/pacman.conf
#
# See the pacman.conf(5) manpage for option and repository directives

#
# GENERAL OPTIONS
#
[options]
# The following paths are commented out with their default values listed.
# If you wish to use different paths, uncomment and update the paths.
#RootDir     = /
#DBPath      = /var/lib/pacman/
#CacheDir    = /var/cache/pacman/pkg/
#LogFile     = /var/log/pacman.log
#GPGDir      = /etc/pacman.d/gnupg/
#HookDir     = /etc/pacman.d/hooks/
HoldPkg     = pacman glibc
#XferCommand = /usr/bin/curl -L -C - -f -o %o %u
#XferCommand = /usr/bin/wget --passive-ftp -c -O %o %u
#CleanMethod = KeepInstalled
Architecture = auto

# Pacman won't upgrade packages listed in IgnorePkg and members of IgnoreGroup
#IgnorePkg   =
#IgnoreGroup =

#NoUpgrade   =
#NoExtract   =

# Misc options
#UseSyslog
Color
ILoveCandy
ParallelDownloads = 5
# We cannot check disk space from within a chroot environment
#CheckSpace
#VerbosePkgLists

# By default, pacman accepts packages signed by keys that its local keyring
# trusts (see pacman-key and its man page), as well as unsigned packages.
SigLevel    = Required DatabaseOptional
LocalFileSigLevel = Optional
#RemoteFileSigLevel = Required

# NOTE: You must run `pacman-key --init` before first using pacman; the local
# keyring can then be populated with the keys of all official Arch Linux
# packagers with `pacman-key --populate archlinux`.

#
# REPOSITORIES
#   - can be defined here or included from another file
#   - pacman will search repositories in the order defined here
#   - local/custom mirrors can be added here or in separate files
#   - repositories listed first will take precedence when packages
#     have identical names, regardless of version number
#   - URLs will have $repo replaced by the name of the current repo
#   - URLs will have $arch replaced by the name of the architecture
#
# Repository entries are of the format:
#       [repo-name]
#       Server = ServerName
#       Include = IncludePath
#
# The header [repo-name] is crucial - it must be present and
# uncommented to enable the repo.
#

# The testing repositories are disabled by default. To enable, uncomment the
# repo name header and Include lines. You can add preferred servers immediately
# after the header, and they will be used before the default mirrors.

#[univalent-testing]
#Include = /etc/pacman.d/alis-mirrorlist

#[multivalent-testing]
#Include = /etc/pacman.d/alis-mirrorlist

#[core-testing]
#Include = /etc/pacman.d/mirrorlist

#[extra-testing]
#Include = /etc/pacman.d/mirrorlist

[univalent]
Include = /etc/pacman.d/alis-mirrorlist

[multivalent]
Include = /etc/pacman.d/alis-mirrorlist

[core]
Include = /etc/pacman.d/mirrorlist

[extra]
Include = /etc/pacman.d/mirrorlist

# If you want to run 32 bit applications on your x86_64 system,
# enable the multilib repositories as required here.

#[multilib-testing]
#Include = /etc/pacman.d/mirrorlist

[multilib]
Include = /etc/pacman.d/mirrorlist

# An example of a custom package repository.  See the pacman manpage for
# tips on creating your own repositories.
#[custom]
#SigLevel = Optional TrustAll
#Server = file:///home/custompkgs
EOF

	pacman -Syy

	if [[ $OS_ID == "parabola" ]]; then
		wget -O /etc/pacman.d/mirrorlist https://archlinux.org/mirrorlist/all/
		sed s/\#Server/Server/g -i /etc/pacman.d/mirrorlist
		sysdpkgs=("systemd-common" "systemd-libsystemd" "systemd-libudev" "systemd-nss-myhostname" "systemd-nss-mymachines" "systemd-nss-resolve" "systemd-nss-systemd" "systemd-qemu" "systemd-udev" "systemd-swap")
		for pkg in ${sysdpkgs[@]}; do
			pacman -Rdd --noconfirm $pkg
		done
	fi

	rm /etc/arch-release
	pacman -Suu
}

chaotic_repo(){
	pacman-key --recv-key 87B78AEB --keyserver keyserver.ubuntu.com
	pacman-key --lsign-key 87B78AEB
	pacman-key --recv-key C880C036 --keyserver keyserver.ubuntu.com
	pacman-key --lsign-key C880C036

	pacman -U --noconfirm \
	       'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' \
	       'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

	pacman-key --populate chaotic

	cat << EOF >> /etc/pacman.conf
[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist
EOF

	pacman -Syyuu
}

end(){
	echo "Migration complete!"
	echo "Please restart your computer just in case."

	if [[ $OS_ID == "parabola" ]]; then
		echo "Users of Parabola should replace the kernel and header manually."
		echo "The available kernels for Alis Linux/GNU/X are:"
		echo " - linux"
		echo " - linux-lts"
		echo " - linux-rt *default kernel of Alis*"
		echo " - linux-rt-lts"
		echo " - linux-hardened"
		echo " - linux-zen"
	fi

	exit 0
}

main(){
	echo "Welcome to Alis Linux/GNU/X Migration Script!"
	echo "(C) 2024 Naka-mura Jukebox"
	echo
	echo "When you use Alis Linux/GNU/X, you require the agreement of the End-user License Agreement (EULA) and various licenses."
	echo "Press any key to display the license..."
	read -n1 selected
	license
	echo "Do you agree the licenses?" [y/N]
	read -n1 selected
	if [[ $selected == "y" ]]; then
		clear
		echo "Start the migration process. You can't go back from here. OK? [y/N]"
		read -n1 selected
		if [[ $selected == "y" ]]; then
			echo
			alis_repo
			echo "Add 'Chaotic AUR'? [y/N]"
			read -n1 selected
			if [[ $selected == "y" ]]; then
				echo
				chaotic_repo
				end
			else
				end
			fi
		else
			clear
			exit 0
		fi
	else
		clear
		exit 0
	fi
}

OS_ID=$(cat /usr/lib/os-release|grep -oP '(?<=^ID=).*')

if [[ $UID != "0" ]]; then
	echo "Need to run as root or with sudo. Exiting..."
	exit 0
else
	echo "Install dependencies for this script."
	echo
	pacman -S --needed less wget
	if [[ $? == "0" ]]; then
		main
	else
		exit 0
	fi
fi

