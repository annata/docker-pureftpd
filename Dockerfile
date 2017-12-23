FROM debian:stretch
COPY pureftpd-mysql.conf /etc/
COPY start.sh /
RUN apt-get update && apt-get install -y pure-ftpd-mysql openssl && rm -rf /var/lib/apt/lists/* && chmod 700 /start.sh
CMD ["/start.sh"]