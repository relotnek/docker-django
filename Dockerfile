FROM stackbrew/ubuntu:14.04
MAINTAINER Snowball One <open-source@snowballone.com.au>

RUN apt-get -qq update && apt-get -q -y upgrade

RUN apt-get install -y -q libpq-dev \
                          postgresql-client-9.3 \
                          curl \
                          vim-tiny git mercurial

RUN apt-get install -y -q python python-dev && \
    curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py && \
    python /tmp/get-pip.py

CMD ["/bin/bash"]
