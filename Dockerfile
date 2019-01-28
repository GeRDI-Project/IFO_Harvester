# GeRDI Harvester Image for DATACITE/IFO-Harvester 

FROM docker-registry.gerdi.research.lrz.de:5043/harvest/oai-pmh:0.4.0-test11

COPY config.json $JETTY_BASE/config.json

USER root
RUN chown -R jetty:jetty $JETTY_BASE
USER jetty

EXPOSE 8080
