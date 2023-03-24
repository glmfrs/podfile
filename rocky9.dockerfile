FROM docker.io/library/rockylinux:9
RUN yum makecache -qq && yum update -y -qq && yum install -y -qq bash-completion bind-utils iputils openssh-clients vim-enhanced && yum clean all -qq
COPY vimrc_redhat /etc/vimrc
