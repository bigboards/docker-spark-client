# Pull base image.
FROM bigboards/hadoop-client-__arch__

MAINTAINER bigboards
USER root

# Install spark
RUN curl -s http://d3kbcqa49mib13.cloudfront.net/spark-1.6.1-bin-hadoop2.6.tgz | tar -xz -C /opt \ 
    && ln -s /opt/spark-1.6.1-bin-hadoop2.6 /opt/spark

# copy the scripts
ADD spark-env /bin/spark-env
RUN chmod a+x /bin/spark-env
