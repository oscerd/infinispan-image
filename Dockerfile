FROM oscerd/java

MAINTAINER ancosen1985@yahoo.com

ENV ISPN_VERSION 7.1.1.Final

COPY . /src

RUN apt-get update && apt-get install -y curl unzip

RUN curl -O http://downloads.jboss.org/infinispan/${ISPN_VERSION}/infinispan-server-${ISPN_VERSION}-bin.zip
RUN unzip infinispan-server-${ISPN_VERSION}-bin.zip && mv infinispan-server-${ISPN_VERSION} /opt/infinispan-server && rm infinispan-server-${ISPN_VERSION}-bin.zip

EXPOSE 8080 9999 4447 8181 11222 11211 9990 8009

CMD ["/src/start.sh"]

