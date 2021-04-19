FROM openjdk:8
EXPOSE 7070
ADD http://172.17.0.2:8081/repository/repository-example/com/example/restServiceDemo:31/0.0.1-SNAPSHOT/restServiceDemo:31-0.0.1-20210419.103250-1.jar /restServiceDemo.jar
ENTRYPOINT ["java","-jar","/restServiceDemo.jar"]
