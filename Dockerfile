FROM openjdk:8u252-jre

WORKDIR /home
ENV JAVA_XMS=256M \
    JAVA_XMX=256M

COPY entrypoint.sh /home/entrypoint.sh
COPY stats-collector.jar /home/stats-collector.jar

RUN chmod +x /home/entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
