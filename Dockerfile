FROM bitnami/kafka:3.7.1

ENTRYPOINT [ "/opt/bitnami/scripts/kafka/entrypoint.sh" ]

USER root
RUN chown -R 1001:1001 /opt/bitnami
RUN chown -R 1001:1001 /var/lib/kafka

USER 1001

CMD [ "/opt/bitnami/scripts/kafka/run.sh" ]
