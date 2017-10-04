FROM python:2

ENV HOME /opt/app
WORKDIR $HOME

ADD . $HOME

RUN \
  git log > index.html

CMD python -m SimpleHTTPServer
