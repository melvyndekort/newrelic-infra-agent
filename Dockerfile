FROM newrelic/infrastructure:latest

ARG TARGETARCH
RUN curl -sL https://download.newrelic.com/infrastructure_agent/binaries/linux/$TARGETARCH/nri-mysql_linux_1.10.2_$TARGETARCH.tar.gz | tar xzf - -C /

COPY newrelic-infra.yml /etc/newrelic-infra.yml
