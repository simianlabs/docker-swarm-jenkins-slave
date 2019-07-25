FROM java:8

RUN mkdir /usr/java12 && wget https://download.java.net/java/GA/jdk12.0.2/e482c34c86bd4bf8b56c0b35558996b9/10/GPL/openjdk-12.0.2_linux-x64_bin.tar.gz -P /usr/java12/ && tar -xzvf /usr/java12/openjdk-12.0.2_linux-x64_bin.tar.gz -C /usr/java12
RUN mkdir /usr/java11 && wget https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz -P /usr/java11/ && tar -xzvf /usr/java11/openjdk-11.0.1_linux-x64_bin.tar.gz -C /usr/java11
RUN wget https://archive.apache.org/dist/maven/maven-3/3.6.1/binaries/apache-maven-3.6.1-bin.tar.gz -P /opt && wget https://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz -P /opt && \
    tar -xzvf /opt/apache-maven-3.6.1-bin.tar.gz -C /opt && tar -xzvf /opt/apache-maven-3.3.9-bin.tar.gz -C /opt
