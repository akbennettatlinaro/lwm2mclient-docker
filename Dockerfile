#
# run the python lwm2mclient in a Docker container
#
FROM bitnami/minideb:unstable
MAINTAINER Alan Bennett <alan.bennett@linaro.org>

# Base dependencies
RUN apt-get update && apt-get install -y git-core python3 python3-setuptools

RUN git clone https://github.com/akbennettatlinaro/lwm2mclient
RUN cd lwm2mclient \
    && python3 setup.py install

# Just run client.py to connect to a local leshan server; 
#  i.e. run the docker container gebart/leshan
CMD cd lwm2mclient && python3 client.py
