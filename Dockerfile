# GeRDI Harvester Image for DATACITE/IFO-Harvester

FROM docker-registry.gerdi.research.lrz.de:5043/harvest/oai-pmh:0.6.0-test8

COPY config.json /var/lib/jetty/config/OaiPmhHarvesterService/config.json

USER root
RUN chown -R jetty:jetty $JETTY_BASE
USER jetty

EXPOSE 8080
