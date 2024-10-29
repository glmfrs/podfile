FROM docker.io/library/nginx:latest
LABEL url="https://github.com/glmfrs/podfile/blob/main/nginx_filer.dockerfile"
EXPOSE 8080
COPY conf_nginx_filer.conf /etc/nginx/sites-available/default
# RUN --mount=type=bind,source=/home/gfr00t78/Music/music/,target=/srv/,readonly
# RUN --mount=type=bind,source=.,target=/srv ls -la
RUN --mount=type=bind,source=/srv/media/comp,target=/data ls -la