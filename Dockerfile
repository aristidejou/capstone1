FROM hshar/webapp
RUN apt-get update
ENTRYPOINT apachectl -D FOREGROUND
