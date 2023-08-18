FROM rabbitmq:3.9.29

RUN apt update
RUN apt install -y curl perl

RUN curl https://raw.githubusercontent.com/kanisterio/kanister/master/scripts/get.sh | bash
CMD [ "/usr/bin/tail", "-f", "/dev/null" ]