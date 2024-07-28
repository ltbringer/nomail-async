FROM rabbitmq:3.13.6-management-alpine

RUN mkdir -p /data

USER 999

COPY ./prod.conf /etc/rabbitmq/rabbitmq.conf
RUN rabbitmq-plugins enable rabbitmq_management
