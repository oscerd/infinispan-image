# Infinispan Server 8.1.0.Final Dockerfile
#
# https://github.com/oscerd/docker-infinispan

# Pull base image.
FROM oscerd/java:oraclejava8
MAINTAINER Andrea Cosentino <ancosen1985@yahoo.com>

ENV ISPN_VERSION 8.2.0.Final
ENV AUTH false
ENV AUTH_USERNAME test
ENV AUTH_PASSWORD test

COPY . /src

RUN apt-get update && apt-get install -y curl unzip

RUN curl -O http://downloads.jboss.org/infinispan/${ISPN_VERSION}/infinispan-server-${ISPN_VERSION}-bin.zip
RUN unzip infinispan-server-${ISPN_VERSION}-bin.zip 
RUN mv infinispan-server-${ISPN_VERSION} /opt/infinispan-server
RUN rm infinispan-server-${ISPN_VERSION}-bin.zip

EXPOSE 8080 9999 4447 8181 11222 11211 9990 8009

CMD ["/src/start.sh"]

