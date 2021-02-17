<<<<<<< HEAD
FROM amitie10g/msys2-mingw-w64-gcc:ubuntu AS download

# Don't ask for anything
ARG DEBIAN_FRONTEND=noninteractive

# Download sm64-port source tree
WORKDIR /tmp
RUN apt-get update && \
	apt-get install -y git && \
	git clone --depth=1 --branch=master https://github.com/sm64-port/sm64-port.git && rm -fr /tmp/sm64-port/.git

FROM amitie10g/msys2-mingw-w64-gcc:ubuntu
=======
FROM amitie10g/msys2-mingw-w64-gcc:20.04

# Download sm64-port source tree
WORKDIR /home/sm64/
RUN	curl -L https://github.com/sm64-port/sm64-port/archive/master.zip --output sm64-port.zip && \
	7za -tzip x sm64-port.zip && \
	ren sm64-port-master sm64-port && \
	del sm64-port.zip
>>>>>>> 8d1ec9a2273e44871a06dca3c8b910adff16ad4b

COPY build.sh /home/sm64/sm64-port/build.sh

WORKDIR /home/sm64/sm64-port
CMD ["build.sh"]
