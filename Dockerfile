FROM bitnami/kafka:3.7.1

ENTRYPOINT [ "/opt/bitnami/scripts/kafka/entrypoint.sh" ]

USER 1001

CMD [ "/opt/bitnami/scripts/kafka/run.sh" ]
