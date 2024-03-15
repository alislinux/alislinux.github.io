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
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS” AND ANY EXPRESS OR IMPLIED
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
Alis Linux/GNU/X End-user License Agreement

Alis comes with no guarantees or warranties of any sorts, either written or implied.

This distribution is licensed under 3-Clause BSD License.
In addition to, this includes a number of pre-existing software components, each of which is governed by its own open source license and is made available to you under the terms of such applicable license.
You are responsible for reviewing and complying with the terms of the licenses for those applicable software components.

------------------------------

BSD 3-clause License

Copyright (c) 2023, Radio New Japan.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS” AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

------------------------------

IPA Font License Agreement v1.0

The Licensor provides the Licensed Program (as defined in Article 1 below) under the terms of this license agreement (“Agreement”).  Any use, reproduction or distribution of the Licensed Program, or any exercise of rights under this Agreement by a Recipient (as defined in Article 1 below) constitutes the Recipient's acceptance of this Agreement. 

Article 1 (Definitions)
1.“Digital Font Program” shall mean a computer program containing, or used to render or display fonts.
2.“Licensed Program” shall mean a Digital Font Program licensed by the Licensor under this Agreement.
3.“Derived Program” shall mean a Digital Font Program created as a result of a modification, addition, deletion, replacement or any other adaptation to or of a part or all of the Licensed Program, and includes a case where a Digital Font Program newly created by retrieving font information from a part or all of the Licensed Program or Embedded Fonts from a Digital Document File with or without modification of the retrieved font information. 
4.“Digital Content” shall mean products provided to end users in the form of digital data, including video content, motion and/or still pictures, TV programs or other broadcasting content and products consisting of character text, pictures, photographic images, graphic symbols and/or the like.
5.“Digital Document File” shall mean a PDF file or other Digital Content created by various software programs in which a part or all of the Licensed Program becomes embedded or contained in the file for the display of the font (“Embedded Fonts”).  Embedded Fonts are used only in the display of characters in the particular Digital Document File within which they are embedded, and shall be distinguished from those in any Digital Font Program, which may be used for display of characters outside that particular Digital Document File.
6.“Computer” shall include a server in this Agreement.
7.“Reproduction and Other Exploitation” shall mean reproduction, transfer, distribution, lease, public transmission, presentation, exhibition, adaptation and any other exploitation.
8.“Recipient” shall mean anyone who receives the Licensed Program under this Agreement, including one that receives the Licensed Program from a Recipient.

Article 2 (Grant of License)
The Licensor grants to the Recipient a license to use the Licensed Program in any and all countries in accordance with each of the provisions set forth in this Agreement. However, any and all rights underlying in the Licensed Program shall be held by the Licensor. In no sense is this Agreement intended to transfer any right relating to the Licensed Program held by the Licensor except as specifically set forth herein or any right relating to any trademark, trade name, or service mark to the Recipient.

1.The Recipient may install the Licensed Program on any number of Computers and use the same in accordance with the provisions set forth in this Agreement.
2.The Recipient may use the Licensed Program, with or without modification in printed materials or in Digital Content as an expression of character texts or the like.
3.The Recipient may conduct Reproduction and Other Exploitation of the printed materials and Digital Content created in accordance with the preceding Paragraph, for commercial or non-commercial purposes and in any form of media including but not limited to broadcasting, communication and various recording media.
4.If any Recipient extracts Embedded Fonts from a Digital Document File to create a Derived Program, such Derived Program shall be subject to the terms of this agreement.
5.If any Recipient performs Reproduction or Other Exploitation of a Digital Document File in which Embedded Fonts of the Licensed Program are used only for rendering the Digital Content within such Digital Document File then such Recipient shall have no further obligations under this Agreement in relation to such actions.
6.The Recipient may reproduce the Licensed Program as is without modification and transfer such copies, publicly transmit or otherwise redistribute the Licensed Program to a third party for commercial or non-commercial purposes (“Redistribute”), in accordance with the provisions set forth in Article 3 Paragraph 2.
7.The Recipient may create, use, reproduce and/or Redistribute a Derived Program under the terms stated above for the Licensed Program: provided, that the Recipient shall follow the provisions set forth in Article 3 Paragraph 1 when Redistributing the Derived Program. 

Article 3 (Restriction)
The license granted in the preceding Article shall be subject to the following restrictions:

1.If a Derived Program is Redistributed pursuant to Paragraph 4 and 7 of the preceding Article, the following conditions must be met :
  (1)The following must be also Redistributed together with the Derived Program, or be made available online or by means of mailing mechanisms in exchange for a cost which does not exceed the total costs of postage, storage medium and handling fees:
    (a)a copy of the Derived Program; and
    (b)any additional file created by the font developing program in the course of creating the Derived Program that can be used for further modification of the Derived Program, if any. 
  (2)It is required to also Redistribute means to enable recipients of the Derived Program to replace the Derived Program with the Licensed Program first released under this License (the “Original Program”).  Such means may be to provide a difference file from the Original Program, or instructions setting out a method to replace the Derived Program with the Original Program. 
  (3)The Recipient must license the Derived Program under the terms and conditions of this Agreement.
  (4)No one may use or include the name of the Licensed Program as a program name, font name or file name of the Derived Program. 
  (5)Any material to be made available online or by means of mailing a medium to satisfy the requirements of this paragraph may be provided, verbatim, by any party wishing to do so.
2.If the Recipient Redistributes the Licensed Program pursuant to Paragraph 6 of the preceding Article, the Recipient shall meet all of the following conditions:
  (1)The Recipient may not change the name of the Licensed Program.
  (2)The Recipient may not alter or otherwise modify the Licensed Program.
  (3)The Recipient must attach a copy of this Agreement to the Licensed Program.
3.THIS LICENSED PROGRAM IS PROVIDED BY THE LICENSOR “AS IS” AND ANY EXPRESSED OR IMPLIED WARRANTY AS TO THE LICENSED PROGRAM OR ANY DERIVED PROGRAM, INCLUDING, BUT NOT LIMITED TO, WARRANTIES OF TITLE, NON-INFRINGEMENT, MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE, ARE DISCLAIMED.  IN NO EVENT SHALL THE LICENSOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXTENDED, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO; PROCUREMENT OF SUBSTITUTED GOODS OR SERVICE; DAMAGES ARISING FROM SYSTEM FAILURE; LOSS OR CORRUPTION OF EXISTING DATA OR PROGRAM; LOST PROFITS), HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE INSTALLATION, USE, THE REPRODUCTION OR OTHER EXPLOITATION OF THE LICENSED PROGRAM OR ANY DERIVED PROGRAM OR THE EXERCISE OF ANY RIGHTS GRANTED HEREUNDER, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
4.The Licensor is under no obligation to respond to any technical questions or inquiries, or provide any other user support in connection with the installation, use or the Reproduction and Other Exploitation of the Licensed Program or Derived Programs thereof.

Article 4 (Termination of Agreement)
1.The term of this Agreement shall begin from the time of receipt of the Licensed Program by the Recipient and shall continue as long as the Recipient retains any such Licensed Program in any way.
2.Notwithstanding the provision set forth in the preceding Paragraph, in the event of the breach of any of the provisions set forth in this Agreement by the Recipient, this Agreement shall automatically terminate without any notice. In the case of such termination, the Recipient may not use or conduct Reproduction and Other Exploitation of the Licensed Program or a Derived Program: provided that such termination shall not affect any rights of any other Recipient receiving the Licensed Program or the Derived Program from such Recipient who breached this Agreement.

Article 5 (Governing Law)
1.IPA may publish revised and/or new versions of this License.  In such an event, the Recipient may select either this Agreement or any subsequent version of the Agreement in using, conducting the Reproduction and Other Exploitation of, or Redistributing the Licensed Program or a Derived Program. Other matters not specified above shall be subject to the Copyright Law of Japan and other related laws and regulations of Japan.
2.This Agreement shall be construed under the laws of Japan.

EOF
}

alis_repo(){
	pacman-key --recv-key 36f612f2 --keyserver keyserver.ubuntu.com
	pacman-key --lsign-key 36f612f2

	pacman -U 'https://alislinux.github.io/repo/alis-keyring.pkg.tar.zst' \
		  'https://alislinux.github.io/repo/alis-mirrorlist.pkg.tar.zst' \
		  'https://alislinux.github.io/repo/alis-logo.pkg.tar.zst'

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

	pacman -Syyuu
}

chaotic_repo(){
	pacman-key --recv-key 87B78AEB --keyserver keyserver.ubuntu.com
	pacman-key --lsign-key 87B78AEB
	pacman-key --recv-key C880C036 --keyserver keyserver.ubuntu.com
	pacman-key --lsign-key C880C036

	pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' \
		  'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

	cat << EOF >> /etc/pacman.conf
[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist
EOF

	pacman -Syyuu
}

end(){
	echo "Migration complete!"
	echo "Please restart your computer just in case."
	exit 0
}

main(){
	echo "Welcome to Alis Migration Script!"
	echo "(C) 2024 Naka-mura Jukebox"
	echo
	echo "When you use Alis, you require the agreement of the End-user License Agreement (EULA) and various licenses."
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

