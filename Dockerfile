FROM alpine:3.4

RUN apk update && apk upgrade
RUN apk --update add openjdk8-jre

CMD ["/usr/bin/java", "-version"]

#Set environment variables
ENV JAVA_MAJOR_VERSION=8 \
    JAVA_HOME=/usr/bin/java

RUN mkdir -p /apps/r2w/
EXPOSE 9001

ARG VERSION
ENV VERSION=$VERSION
ARG MSNAME
ENV MSNAME=$MSNAME

COPY ${MSNAME}-${VERSION}.jar /apps/r2w/
CMD ["java - jar  /apps/r2w/${MSNAME}-${VERSION}.jar"]
