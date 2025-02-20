FROM infosux/haxtools:cli

RUN export DEBIAN_FRONTEND="noninteractive" \
    && apt-get -yqq update \
    && apt-get -yqq install \
        # bloodhound \
        burpsuite \
        chromium \
        dirbuster \
        firefox-esr \
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
    && rm -rf /var/lib/gems/*/doc \
    && rm -rf /usr/share/icons/Adwaita/*

RUN bash -c 'mkdir /usr/share/neo4j/{run,logs}' \
    && /usr/share/neo4j/bin/neo4j-admin set-initial-password blood \
    && echo "dbms.active_database=BloodHoundExampleDB.graphdb" >> /usr/share/neo4j/conf/neo4j.conf \
    && echo "dbms.allow_upgrade=true" >> /usr/share/neo4j/conf/neo4j.conf

RUN update-ca-certificates \
    && rm -rf /usr/local/share/ca-certificates/*.crt
