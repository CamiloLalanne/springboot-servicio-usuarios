FROM openjdk:8
VOLUME /tmp
ADD ./target/servicio-usuario.jar servicio-usuario-image.jar
ENTRYPOINT ["java","-jar","/servicio-usuario-image.jar"]