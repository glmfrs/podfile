FROM docker.io/library/ubuntu:22.04
LABEL org.opencontainers.image.source https://github.com/glmfrs/podfile.git
RUN ln -snf /usr/share/zoneinfo/Europe/Paris /etc/localtime && echo Europe/Paris > /etc/timezone
RUN DEBIAN_FRONTEND=noninteractive apt-get update -qq && apt-get dist-upgrade -y -qq && apt-get install -y -qq --no-install-recommends apt-transport-https apt-utils bash-completion bind9-dnsutils curl inetutils-ping openssh-client vim-nox && apt-get autoclean -qq && apt-get autoclean -qq && rm -fr /var/lib/apt
COPY conf_vimrc /etc/vim/vimrc