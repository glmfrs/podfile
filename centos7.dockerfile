LABEL org.opencontainers.image.source https://github.com/glmfrs/podfile.git
FROM docker.io/library/centos:7
RUN yum makecache -qq && yum update -y -qq && yum install -y -qq bash-completion bind-utils iputils openssh-clients openssl vim-enhanced && yum clean all
COPY vimrc_centos7 /etc/vimrc
