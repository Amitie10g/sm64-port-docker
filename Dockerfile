FROM amitie10g/msys2-mingw-w64-gcc:ubuntu AS download

# Don't ask for anything
ARG DEBIAN_FRONTEND=noninteractive

# Download sm64-port source tree
WORKDIR /tmp
RUN apt-get update && \
	apt-get install -y git && \
	git clone --depth=1 --branch=master https://github.com/sm64-port/sm64-port.git && rm -fr /tmp/sm64-port/.git

FROM amitie10g/msys2-mingw-w64-gcc:ubuntu

COPY --from=download /tmp/sm64-port/ /home/sm64/sm64-port/
COPY build.sh /home/sm64/sm64-port/build.sh

WORKDIR /home/sm64/sm64-port
CMD ["build.sh"]