FROM newrelic/infrastructure:latest

RUN curl -sL https://download.newrelic.com/infrastructure_agent/binaries/linux/amd64/nri-mysql_linux_1.10.2_amd64.tar.gz | tar xzf - -C /

COPY newrelic-infra.yml /etc/newrelic-infra.yml
