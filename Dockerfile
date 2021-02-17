ARG VERSION=ubuntu
FROM amitie10g/mingw-w64-gcc:$VERSION

# Don't ask for anything
ARG DEBIAN_FRONTEND=noninteractive

# Download sm64-port source tree
WORKDIR /home/sm64/
RUN	apt-get update && \
	apt-get install -y wine64 && \
	rm -rf /var/lib/apt/lists/* && \
	curl -L https://github.com/sm64-port/sm64-port/archive/master.zip --output sm64-port.zip && \
	7za -tzip x sm64-port.zip && \
	mv sm64-port-master sm64-port && \
	rm sm64-port.zip

COPY build.sh /home/sm64/sm64-port/build.sh

WORKDIR /home/sm64/sm64-port
CMD ["build.sh"]
