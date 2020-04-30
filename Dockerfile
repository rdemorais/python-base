FROM debian:9

RUN apt-get update && \ 
  apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev \ 
  libssl-dev libreadline-dev libffi-dev wget python3-pip libpq-dev libbz2-dev libsqlite3-dev python3-dev curl

RUN curl -O https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz && \
  tar -xf Python-3.7.3.tar.xz && \
  cd Python-3.7.3 && \
  ./configure && \
  make -j 8 && \
  make altinstall && \
  rm -fr Python-3.7.3.tar.xz