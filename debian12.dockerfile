FROM docker.io/library/debian:bookworm
LABEL org.opencontainers.image.description glmfrs_debian_12
RUN DEBIAN_FRONTEND=noninteractive apt-get update -qq \
&& apt-get dist-upgrade -y -qq \
&& apt-get install -y -qq --no-install-recommends apt-utils bash-completion bind9-dnsutils curl inetutils-ping locales openssh-client vim-nox \
&& apt-get autoclean -qq \
&& apt-get autoclean -qq \
&& rm -rf /var/lib/apt/lists/* \
&& localedef -i en_GB -c -f UTF-8 -A /usr/share/locale/locale.alias en_GB.UTF-8
ENV LANG en_GB.utf8
COPY conf_vimrc /etc/vim/vimrc
COPY conf_bashrc /etc/bash.bashrc