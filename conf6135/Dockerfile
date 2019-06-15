FROM adoptopenjdk/openjdk8:slim

ENV RUN_USER            					daemon
ENV RUN_GROUP           					daemon
ENV CONFLUENCE_HOME          				/var/atlassian/application-data/confluence
ENV CONFLUENCE_INSTALL_DIR   				/opt/atlassian/confluence

WORKDIR $CONFLUENCE_HOME

# Expose HTTP port
EXPOSE 8090

CMD ["/entrypoint.sh", "-fg"]

COPY entrypoint.sh              			                /entrypoint.sh
COPY mysql-connector-java-5.1.47.jar           		        ${JIRA_INSTALL_DIR}/lib/
#COPY dbconfig.xml           		                        ${JIRA_HOME}

ARG CONFLUENCE_VERSION=6.13.5
ARG DOWNLOAD_URL=https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-${CONFLUENCE_VERSION}.tar.gz
ARG JAVA_DOWNLOAD_URL=http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz

RUN mkdir -p                             ${CONFLUENCE_INSTALL_DIR} \
    && curl -L                           ${DOWNLOAD_URL} | tar -xz --strip-components=1 -C "${CONFLUENCE_INSTALL_DIR}" \
    && chown -R ${RUN_USER}:${RUN_GROUP} ${CONFLUENCE_INSTALL_DIR}/ \
    && sed -i -e 's/^JVM_SUPPORT_RECOMMENDED_ARGS=""$/: \${JVM_SUPPORT_RECOMMENDED_ARGS:=""}/g' ${CONFLUENCE_INSTALL_DIR}/bin/setenv.sh \
    && sed -i -e 's/^JVM_\(.*\)_MEMORY="\(.*\)"$/: \${JVM_\1_MEMORY:=\2}/g' ${CONFLUENCE_INSTALL_DIR}/bin/setenv.sh \
    && sed -i -e 's/port="8080"/port="8080" secure="${catalinaConnectorSecure}" scheme="${catalinaConnectorScheme}" proxyName="${catalinaConnectorProxyName}" proxyPort="${catalinaConnectorProxyPort}"/' ${CONFLUENCE_INSTALL_DIR}/conf/server.xml \
    && sed -i -e 's/Context path=""/Context path="${catalinaContextPath}"/' ${CONFLUENCE_INSTALL_DIR}/conf/server.xml \
    && mkdir ${CONFLUENCE_INSTALL_DIR}/oracle_java_8 \
    && curl -L -b "oraclelicense=accept-securebackup-cookie" ${JAVA_DOWNLOAD_URL} | tar -xz --strip-components=1 -C "${CONFLUENCE_INSTALL_DIR}/oracle_java_8"
