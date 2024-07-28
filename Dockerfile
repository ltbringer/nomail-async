FROM apache/kafka:3.8.0


USER appuser

ENTRYPOINT ["/__cacert_entrypoint.sh"]
CMD ["/etc/kafka/docker/run"]