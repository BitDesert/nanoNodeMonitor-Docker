FROM php:7.2-apache

RUN git clone https://github.com/NanoTools/nanoNodeMonitor.git /var/www/html

COPY entry.sh /entry.sh

RUN chmod +x /entry.sh

CMD ["/bin/bash", "/entry.sh"]