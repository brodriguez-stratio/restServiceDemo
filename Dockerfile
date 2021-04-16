FROM openjdk:8
EXPOSE 8080
ADD out/artifacts/restServiceDemo_jar/restServiceDemo.jar restServiceDemo.jar
ENTRYPOINT ["java","-jar","/restServiceDemo.jar"]
