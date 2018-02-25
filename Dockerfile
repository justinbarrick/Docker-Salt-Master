FROM alpine:3.7

RUN apk update
RUN apk add salt-master=2017.7.2-r0 salt-api=2017.7.2-r0 salt-minion=2017.7.2-r0 git py-pip linux-pam
RUN pip install cherrypy==3.2.3

VOLUME ['/etc/salt/pki', '/var/cache/salt', '/var/logs/salt', '/etc/salt/master.d', '/srv/salt']

EXPOSE 4505 4506

ADD minion_id /etc/salt/minion_id
ADD run.sh /usr/local/bin/run.sh

CMD "/usr/local/bin/run.sh"
