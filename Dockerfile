# https://hub.docker.com/_/httpd

FROM httpd:2.4.46

COPY ./html/ /usr/local/apache2/htdocs/

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]