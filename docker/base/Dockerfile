FROM kalilinux/kali-rolling

COPY dockerfiles/ /

RUN export DEBIAN_FRONTEND="noninteractive" \
    && echo "Acquire::http {No-Cache=True;};" > /etc/apt/apt.conf.d/no-cache \
    && echo 'Acquire::Languages "none;";' > /etc/apt/apt.conf.d/no-lang \
    && apt-get -yqq update \
    && apt-get --no-install-recommends -yqq install \
        bind9-dnsutils \
        binutils \
        binwalk \
        ca-certificates \
        curl \
        dos2unix \
        exiftool \
        file \
        findutils \
        ftp \
        git \
        gnupg2 \
        gosu \
        iproute2 \
        jq \
        less \
        locales \
        nano \
        ncat \
        nmap \
        openssh-client \
        openssl \
        openvpn \
        proxychains4 \
        python3 \
        python3-pip \
        ruby \
        smbclient \
        sudo \
        tcpdump \
        telnet \
        tini \
        tmux \
        tor \
        tshark \
        unzip \
        vim \
        wget \
        whois \
        zsh \
    && pip3 install --upgrade --no-cache-dir pip \
    && curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
    && echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-stretch-prod stretch main" > /etc/apt/sources.list.d/microsoft.list \
    && update-ca-certificates \
    && rm -rf /usr/local/share/ca-certificates/*.crt \
    && apt-get -y autoremove --purge \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /root/.cache \
    && rm -rf /var/cache/* \
    && rm -rf /var/log/* \
    && rm -rf /usr/share/doc-base/* \
    && rm -rf /usr/share/groff/* \
    && rm -rf /usr/share/info/* \
    && rm -rf /usr/share/lintian/* \
    && rm -rf /usr/share/linda/* \
    && rm -rf /var/cache/man/* \
    && find /usr/share/doc -depth -type f ! -name copyright -exec rm {} \; \
    && find /usr/share/locale -mindepth 1 -maxdepth 1 ! -name 'en_GB' ! -name 'en_US' -exec rm -r {} \; \
    && find /usr/share/i18n/locales -mindepth 1 -maxdepth 1 ! -name 'en_GB' ! -name 'en_US' -exec rm -r {} \; \
    && ln -s $(which tini) /sbin/tini \
    && sed -i 's/%sudo\tALL=(ALL:ALL) ALL/%sudo\tALL=(ALL) NOPASSWD:ALL/' /etc/sudoers

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]
CMD ["zsh"]
