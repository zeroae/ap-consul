# Use zeroae/ap-light
# https://github.com/zeroae/ap-light
FROM zeroae/ap-light:0.1.0
MAINTAINER Patrick Sodré <sodre@zeroae.co>

ADD service /container/service
RUN /container/tool/install-service

# Set /var/www/ in a data volume
VOLUME /var/lib/run

# Expose default http and https ports
EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 53 53/udp

CMD [ "containerpilot", "consul", "agent", "-server", "-config-dir=/etc/consul.d" ]
