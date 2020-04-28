FROM nginx:1.18.0-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY html /usr/share/nginx/html
COPY runnginx.sh /usr/bin
RUN curl https://get.acme.sh | sh
CMD ["sh", " /usr/bin/runnginx.sh"]
