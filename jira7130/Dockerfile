FROM adoptopenjdk/openjdk8:slim

ENV RUN_USER            					daemon
ENV RUN_GROUP           					daemon
ENV JIRA_HOME          						/var/atlassian/application-data/jira
ENV JIRA_INSTALL_DIR   						/opt/atlassian/jira

WORKDIR $JIRA_HOME

# Expose HTTP port
EXPOSE 8080

CMD ["/entrypoint.sh", "-fg"]

COPY entrypoint.sh              			                /entrypoint.sh
COPY dbconfig.xml           		                                /

ARG JIRA_VERSION=7.13.0
ARG DOWNLOAD_URL=https://product-downloads.atlassian.com/software/jira/downloads/atlassian-jira-core-${JIRA_VERSION}.tar.gz

RUN mkdir -p                             ${JIRA_INSTALL_DIR} \
    && curl -L                           ${DOWNLOAD_URL} | tar -xz --strip-components=1 -C "${JIRA_INSTALL_DIR}" \
    && chown -R ${RUN_USER}:${RUN_GROUP} ${JIRA_INSTALL_DIR}/ \
    && sed -i -e 's/^JVM_SUPPORT_RECOMMENDED_ARGS=""$/: \${JVM_SUPPORT_RECOMMENDED_ARGS:=""}/g' ${JIRA_INSTALL_DIR}/bin/setenv.sh \
    && sed -i -e 's/^JVM_\(.*\)_MEMORY="\(.*\)"$/: \${JVM_\1_MEMORY:=\2}/g' ${JIRA_INSTALL_DIR}/bin/setenv.sh \
    && sed -i -e 's/port="8080"/port="8080" secure="${catalinaConnectorSecure}" scheme="${catalinaConnectorScheme}" proxyName="${catalinaConnectorProxyName}" proxyPort="${catalinaConnectorProxyPort}"/' ${JIRA_INSTALL_DIR}/conf/server.xml \
    && sed -i -e 's/Context path=""/Context path="${catalinaContextPath}"/' ${JIRA_INSTALL_DIR}/conf/server.xml
