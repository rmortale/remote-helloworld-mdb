FROM quay.io/wildfly/wildfly-runtime:latest-jdk17
COPY --chown=jboss:root target/server $JBOSS_HOME
RUN chmod -R ug+rwX $JBOSS_HOME
COPY --chown=jboss:root target/ROOT.war $JBOSS_HOME/standalone/deployments/ROOT.war
COPY --chown=jboss:root truststore.jks $JBOSS_HOME/truststore.jks
