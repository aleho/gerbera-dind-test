FROM docker:dind

RUN  mkdir /content \
  && wget "https://download.samplelib.com/mp4/sample-5s.mp4" -o /content/sample-5s.mp4

RUN  mkdir -p /gerbera
COPY ./config.xml /gerbera/config.xml
