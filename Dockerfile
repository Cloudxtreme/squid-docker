FROM bbania/centos:base
MAINTAINER "Bart Bania" <contact@bartbania.com> 

RUN yum install -y supervisor squid

ADD ./config/supervisord.conf /etc/supervisord.conf
ADD ./config/start.sh /usr/sbin/start.sh
RUN chmod 755 /usr/sbin/start.sh

VOLUME /config
VOLUME /cache

EXPOSE 3128
ENTRYPOINT ["/usr/sbin/start.sh"]
