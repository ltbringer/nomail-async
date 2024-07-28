FROM bitnami/kafka:3.6.2

ENTRYPOINT [ "/opt/bitnami/scripts/kafka/entrypoint.sh" ]

USER root
RUN chown -R 1001:1001 /opt/bitnami

USER 1001

CMD [ "/opt/bitnami/scripts/kafka/run.sh" ]
