FROM alpine:3.7
# install tools
RUN apk update \
    && apk add git \
    && apk add python \
    && apk add py2-pip
# install require
RUN pip install requests 
# download theHarvester
RUN git clone https://github.com/laramies/theHarvester.git
WORKDIR theHarvester

ENTRYPOINT ["/usr/bin/python", "/theHarvester/theHarvester.py"]