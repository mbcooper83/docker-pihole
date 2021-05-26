FROM pihole/pihole:latest

WORKDIR /var/www/html

# Pulled from the interactive install script at https://github.com/thomasbnt/Night_PiHole/blob/master/install.sh
pihole disable
mkdir -p /config/etc/pihole
cp -r /etc/pihole /config/etc/pihole
rm -r /etc/pihole
ln -s /config/etc/pihole /etc/pihole
mkdir -p /config/etc/dnsmasq.d
cp -r /etc/dnsmasq.d /config/etc/dnsmasq.d
rm -r /etc/dnsmasq.d
ln -s /config/etc/dnsmasq.d /etc/dnsmasq.d
pihole enable
