FROM rabbitmq:3.13.6-management-alpine

RUN mkdir -p /data
RUN chown -R 999:999 /data

COPY ./prod.conf /etc/rabbitmq/rabbitmq.conf
RUN rabbitmq-plugins enable rabbitmq_management
