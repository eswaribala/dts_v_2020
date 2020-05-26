FROM java:8
EXPOSE 6070
ADD /target/bankingldapdocker-0.0.1-SNAPSHOT.jar bankingldapdocker-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","bankingldapdocker-0.0.1-SNAPSHOT.jar"]
COPY db.sql /docker-entrypoint-initdb.d/