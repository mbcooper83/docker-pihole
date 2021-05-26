FROM pihole/pihole:latest

WORKDIR /var/www/html

# Pulled from the interactive install script at https://github.com/thomasbnt/Night_PiHole/blob/master/install.sh
RUN git clone https://github.com/thomasbnt/Night_PiHole.git temp
RUN mkdir /config
RUN echo "hello" > /config/hello.txt
