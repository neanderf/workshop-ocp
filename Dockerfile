FROM registry.access.redhat.com/rhscl/php-70-rhel7
COPY ./index.php /opt/app-root/src/index.php
CMD ["container-entrypoint", "/usr/libexec/s2i/run"]
