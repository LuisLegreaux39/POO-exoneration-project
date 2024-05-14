FROM maven:3.9.6-amazoncorretto-17-al2023 AS build-stage

WORKDIR /app

COPY . .

RUN mvn clean package

FROM tomcat:10.1.20 as server-stage

COPY --from=build-stage /app/target/jsp-crud-mnv-1.0-SNAPSHOT.war /usr/local/tomcat/webapps

CMD  ["catalina.sh" ,"run"]