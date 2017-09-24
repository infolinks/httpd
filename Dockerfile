FROM httpd:2.4.27-alpine
MAINTAINER Arik Kfir <arik@infolinks.com>
COPY ./bin/httpd.sh /usr/local/bin/
COPY ./resources/trusted-proxies /var/www/
COPY ./resources/ok.txt /var/www/html/
COPY ./conf/*.conf /etc/httpd/conf.d/
RUN apk add --no-cache mod_dav_svn && \
    ln -s /usr/local/apache2/bin/htpasswd /usr/local/bin/htpasswd && \
    chmod -v 0755 /usr/local/bin/httpd.sh && \
    mkdir -vp /var/log/httpd && \
    echo "IncludeOptional /etc/httpd/conf.d/*.conf" >> /usr/local/apache2/conf/httpd.conf
EXPOSE 80 443
ENTRYPOINT ["/usr/local/bin/httpd.sh"]
