FROM docker.io/library/almalinux:9
LABEL url="https://github.com/glmfrs/podfile/blob/main/alma9.dockerfile"
RUN dnf makecache -qq \
&& dnf update -y -qq \
&& dnf install -y -qq bash-completion bind-utils iputils openssh-clients vim-enhanced \
&& dnf clean all -qq \
&& rm -rf /var/cache/dnf
COPY conf_vimrc_redhat /etc/vimrc