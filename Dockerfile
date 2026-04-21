FROM maven:3.8.8-eclipse-temurin-17

RUN mkdir job4j_di

WORKDIR job4j_di

COPY . .

RUN mvn install

CMD ["java", "-jar", "target/main.jar"]