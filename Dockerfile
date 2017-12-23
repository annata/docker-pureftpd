FROM debian:stretch
RUN apt-get update && apt-get install -y pure-ftpd-mysql && rm -rf /var/lib/apt/lists/*
COPY pureftpd-mysql.conf /etc/
COPY start.sh /
CMD /start.sh