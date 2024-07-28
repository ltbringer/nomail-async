FROM rabbitmq:3.13.6-management-alpine

RUN mkdir -p /data

COPY ./prod.conf /etc/rabbitmq/rabbitmq.conf
RUN rabbitmq-plugins enable rabbitmq_management

ENTRYPOINT [ "tail" ]
CMD [ "-f", "/dev/null" ]