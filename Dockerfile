FROM maven:3

RUN mkdir gokul-demo
RUN mvn --version

ADD ./ ./

ADD book-flight-module.xml book-flight-module.xml
ADD search-module.xml search-module.xml

ENTRYPOINT mvn -DBROWSER="chrome" test