![Atlassian JIRA](https://www.atlassian.com/dam/wac/legacy/jira_core_logo_landing.png)

JIRA Core is a project and task management solution built for business teams.

Learn more about JIRA Core: <https://www.atlassian.com/software/jira/core>

# Overview

This Docker container makes it easy to get an instance of JIRA Core up and running.

# Quick Start

To get started you can use a data volume, or named volumes. In this example we'll use named volumes.

    $> docker run --name="jira" -d -p 8080:8080 lukshap/actonic:jira-8.0.0-extDB


**Success**. JIRA is now available on [http://localhost:8080](http://localhost:8080)*

Please ensure your container has the necessary resources allocated to it. We recommend 2GiB of memory allocated to accommodate the application server. See [System Requirements](https://confluence.atlassian.com/adminjiraserver071/jira-applications-installation-requirements-802592164.html) for further information.
    
## Memory / Heap Size

If you need to override JIRA's default memory allocation, you can control the minimum heap (Xms) and maximum heap (Xmx) via the below environment variables.

* `JVM_MINIMUM_MEMORY` (default: 384m)

   The minimum heap size of the JVM

* `JVM_MAXIMUM_MEMORY` (default: 768m)

   The maximum heap size of the JVM

## Reverse Proxy Settings

If JIRA is run behind a reverse proxy server as [described here](https://confluence.atlassian.com/adminjiraserver072/integrating-jira-with-apache-using-ssl-828788158.html), then you need to specify extra options to make JIRA aware of the setup. They can be controlled via the below environment variables.

* `CATALINA_CONNECTOR_PROXYNAME` (default: NONE)

   The reverse proxy's fully qualified hostname.

* `CATALINA_CONNECTOR_PROXYPORT` (default: NONE)

   The reverse proxy's port number via which JIRA is accessed.

* `CATALINA_CONNECTOR_SCHEME` (default: http)

   The protocol via which JIRA is accessed.

* `CATALINA_CONNECTOR_SECURE` (default: false)

   Set 'true' if CATALINA_CONNECTOR_SCHEME is 'https'.
   
* `CATALINA_CONTEXT_PATH` (default: NONE)

   The context path the application is served over.

## JVM configuration

If you need to pass additional JVM arguments to JIRA, such as specifying a custom trust store, you can add them via the below environment variable

* `JVM_SUPPORT_RECOMMENDED_ARGS`

   Additional JVM arguments for JIRA
   
Example:

    $> docker run -e JVM_SUPPORT_RECOMMENDED_ARGS=-Djavax.net.ssl.trustStore=/var/atlassian/application-data/jira/cacerts -v jiraVolume:/var/atlassian/application-data/jira --name="jira" -d -p 8080:8080 dchevell/jira-core

## DB config configuration (for those who use external DB ONLY)

If you use the external DB you have to provide the info for the connection

* `EXTDB_HOST`

   The DB host's url or IP
   
* `EXTDB_NAME`

   The DB name

* `EXTDB_USER`

   The DB user for connection to DB name
   
* `EXTDB_PASSWORD`

   The DB EXTDB_USER password