ARG VERSION=ubuntu
FROM amitie10g/mingw-w64-gcc:$VERSION

# Don't ask for anything
ARG DEBIAN_FRONTEND=noninteractive

# Download sm64-port source tree
ADD https://github.com/sm64-port/sm64-port/archive/master.zip /home/sm64/sm64-port.zip

WORKDIR /home/sm64/
RUN	unzip sm64-port.zip && \
	mv sm64-port-master sm64-port && \
	rm sm64-port.zip

#RUN	apt-get update && \
#	apt-get install -y wine64 && \
#	rm -rf /var/lib/apt/lists/* && \

COPY build.sh /home/sm64/sm64-port/build.sh

WORKDIR /home/sm64/sm64-port
CMD ["build.sh"]
