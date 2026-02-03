ARG POLYNOTE_VERSION=0.5.0
ARG SCALA_VERSION=2.12

FROM polynote/polynote:${POLYNOTE_VERSION}-${SCALA_VERSION}

USER root
WORKDIR /opt

# Copy Spark đã có sẵn
COPY spark-3.5.8-bin-hadoop3 /opt/spark

# Set environment
ENV SPARK_HOME=/opt/spark
ENV PATH=$PATH:$SPARK_HOME/bin

# (Optional) Spark config nếu bạn có
# COPY spark-defaults.conf /opt/spark/conf/

USER ${NB_USER}
