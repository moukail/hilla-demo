FROM node:22.3-alpine3.19 AS node
FROM amazoncorretto:21-alpine3.19-jdk

RUN apk --update --no-cache add libstdc++ bash wget rsync inotify-tools

COPY --from=node /usr/local /usr/local
COPY --from=node /opt /opt

WORKDIR /var/www

ADD install.sh /home/
RUN chmod +x /home/install.sh

ADD docker-init.sh /home/
RUN chmod +x /home/docker-init.sh
CMD bash /home/docker-init.sh
