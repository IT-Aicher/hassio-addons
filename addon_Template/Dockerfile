ARG BUILD_FROM
##=ghcr.io/hassio-addons/debian-base:6.2.1
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

ADD rootfs  /
RUN chmod a+x /entrypoint.sh

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

#
##
###=====  start custom code



###=====  end custom code
##
#

ENTRYPOINT [ "/init" ]
CMD ["/entrypoint.sh"]

