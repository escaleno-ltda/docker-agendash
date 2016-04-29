FROM lgatica/node-krb5

MAINTAINER Leonardo Gatica <lgatica@protonmail.com>

RUN npm i -g agendash
ADD run.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/run.sh

EXPOSE 3000

CMD ["/usr/local/bin/run.sh"]
