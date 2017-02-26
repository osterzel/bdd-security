FROM openjdk:8-jdk

RUN apt-get update && apt-get install -fy build-essential python-dev python-pip && pip install sslyze

RUN mkdir /app

COPY . /app

WORKDIR /app

RUN ./gradlew assemble 

CMD [ "run.sh" ]
