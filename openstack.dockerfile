FROM docker.io/library/debian:stable
LABEL org.opencontainers.image.source https://github.com/glmfrs/podfile.git
RUN DEBIAN_FRONTEND=noninteractive apt-get update -qq && apt-get dist-upgrade -y -qq && apt-get install -y -qq --no-install-recommends apt-transport-https bash-completion bind9-dnsutils curl inetutils-ping openssh-client python3-openstackclient python3-novaclient python3-swiftclient vim-nox && apt-get autoclean -qq && apt-get autoclean -qq && rm -fr /var/lib/apt
COPY vimrc /etc/vim/vimrc