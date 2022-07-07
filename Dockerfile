# Run with: docker build -t selfstab . && docker run --rm -it -v:"$(pwd)"/data:/workspace/data selfstab
FROM eclipse-temurin:18
WORKDIR /workspace
RUN apt-get update
RUN apt-get -yq install git
ADD src src
ADD gradle gradle
ADD gradlew .
ADD *.kts ./
ADD util/* util/
RUN ./gradlew runShortBatch --parallel
RUN ./gradlew --stop
RUN apt-get -yq install libfontconfig1 libxrender1 libxtst6 libxi6
ENTRYPOINT ["/workspace/gradlew"]
CMD [ "runBarabasiGraphic", "--parallel" ]
