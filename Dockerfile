FROM rabbitmq:3.13.6-management-alpine

RUN mkdir -p /data

USER root

RUN mkdir -p /data/rabbitmq/log /data/rabbitmq/mnesia
RUN chown -R rabbitmq:rabbitmq /data

USER rabbitmq

COPY ./prod.conf /etc/rabbitmq/rabbitmq.conf
RUN rabbitmq-plugins enable rabbitmq_management
