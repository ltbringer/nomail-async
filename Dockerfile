FROM rabbitmq:3.13.6-management-alpine

COPY ./prod.conf /etc/rabbitmq/rabbitmq.conf
RUN rabbitmq-plugins enable rabbitmq_management
