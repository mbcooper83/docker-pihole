FROM pihole/pihole:latest

WORKDIR /var/www/html

# Pulled from the interactive install script at https://github.com/thomasbnt/Night_PiHole/blob/master/install.sh
RUN exec pihole disable
RUN mkdir -p /config/etc/pihole
RUN rm -r /etc/pihole
RUN ln -s /config/etc/pihole /etc/pihole
RUN mkdir -p /config/etc/dnsmasq.d
RUN rm -r /etc/dnsmasq.d
RUN ln -s /config/etc/dnsmasq.d /etc/dnsmasq.d
RUN exec pihole enable
EXPOSE 53/udp
EXPOSE 53/tcp
EXPOSE 67/udp
EXPOSE 67/tcp
EXPOSE 880:80/tcp
