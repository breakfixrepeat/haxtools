# Base Image

The base image is the foundation for all other derivative images and installs the following notable packages from the Kali repo:

* bind9-dnsutils
    * dig
    * nslookup
    * nsupdate
* binutils
    * ld
    * as
    * gold
    * addr2line
    * ar
    * c++filt
    * dlltool
    * elfedit
    * gprof
    * gprofng
    * nlmconv
    * nm
    * objcopy
    * objdump
    * ranlib
    * readelf
    * size
    * strings
    * strip
    * windmc
    * windres
* binwalk
* ca-certificates
* curl
* dos2unix
* exiftool
* file
* findutils
    * find
    * xargs
* ftp
* git
* gnupg2
* jq
* less
* nano
* ncat
* nmap
* openssh-client
* openssl
* proxychains4
* python3
* python3-pip
* ruby
* smbclient
* tcpdump
* telnet
* tmux
* tor
* tshark
* unzip
* vim
* wget
* whois
* zsh

# CLI Image

The CLI image installs the packages below from the Kali repo:

* apktool
* cewl
* commix
* crackmapexec
* dirb
* gdb
* gdb-peda
* gobuster
* hashcat
* hashcat-utils
* hashid
* hydra
* john
* joomscan
* masscan
* mitmproxy
* pdfcrack
* pngcheck
* powershell-empire
* radare2
* responder
* smbmap
* sqlmap
* sslscan
* steghide
* stegsnow
* wafw00f
* wfuzz
* whatweb
* wpscan

The CLI image includes the following packages, built/installed from source for the most up to date experience:

* amass
* anew
* asnmap
* assetfinder
* chaos
* cloudlist
* dalfox
* dnsx
* ffuf
* gau
* getJS
* gf
* gitleaks
* gospider
* hakrawler
* httprobe
* httpx
* katana
* massdns
* meg
* naabu
* nuclei
* proxify
* rustscan
* searchsploit
* shuffledns
* subfinder
* tlsx
* uncover
* unfurl
* waybackurls
* zdns

The CLI image installs the following from PyPi:

* aclpwn
* aiodnsbrute
* impacket
* pwncat
* pwntools
* stegcracker
* stego-lsb

The CLI image installs the following Ruby Gems:

* evil-winrm
* zsteg

# GUI

The GUI image installs the packages below from the Kali repo:

* bloodhound
* burpsuite
* chromium
* dirbuster
* firefox-esr
