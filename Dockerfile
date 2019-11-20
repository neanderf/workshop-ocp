FROM registry.access.redhat.com/rhscl/php-70-rhel7
COPY ./index.php /opt/app-root/src/index.php
COPY ./liveness.php /opt/app-root/src/liveness.php
COPY ./readiness.php /opt/app-root/src/readiness.php
CMD ["container-entrypoint", "/usr/libexec/s2i/run"]
