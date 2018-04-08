FROM centos

RUN yum update -y && \
    yum install -y python-devel wget which gcc java-1.8.0-openjdk-headless && \
    yum autoremove -y && yum clean all && \
    rm -rf /var/cache/yum

RUN wget -q https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py --no-cache-dir && rm -f get-pip.py && \
    pip install --no-cache-dir \
        pyspark \
        pandas \
        scipy \
        matplotlib \
        scikit-learn \
        jupyter \
        pyyaml \
        ua-parser \
        user-agents

# RUN wget -q https://archive.apache.org/dist/spark/spark-2.3.0/spark-2.3.0-bin-hadoop2.7.tgz && \
#     tar zxf spark-2.3.0-bin-hadoop2.7.tgz && rm -f spark-2.3.0-bin-hadoop2.7.tgz && \
#     ln -s spark-2.3.0-bin-hadoop2.7 spark

RUN wget -q https://archive.apache.org/dist/zeppelin/zeppelin-0.7.3/zeppelin-0.7.3-bin-netinst.tgz && \
    tar zxf zeppelin-0.7.3-bin-netinst.tgz && rm -f zeppelin-0.7.3-bin-netinst.tgz && \
    ln -s zeppelin-0.7.3-bin-netinst zeppelin

ENV JAVA_HOME /usr/lib/jvm/jre-1.8.0/
# ENV SPARK_HOME /usr/lib/python2.7/site-packages/pyspark
ENV ZEPPELIN_HOME /zeppelin
ENV ZEPPELIN_NOTEBOOK_DIR /root/zeppelin-notebook
ENV SPARK_SUBMIT_OPTIONS "--driver-memory 8G"
ENV MASTER "local[*]"

ADD access.log /root/
ADD dataset1.tar.gz /root/
ADD dataset2.gz.parquet /root/

EXPOSE 8080 4040 8888
