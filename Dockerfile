FROM amitie10g/msys2-mingw-w64-gcc:20.04

# Download sm64-port source tree
WORKDIR /home/sm64/
RUN	curl -L https://github.com/sm64-port/sm64-port/archive/master.zip --output sm64-port.zip && \
	7za -tzip x sm64-port.zip && \
	ren sm64-port-master sm64-port && \
	del sm64-port.zip

COPY build.sh /home/sm64/sm64-port/build.sh

WORKDIR /home/sm64/sm64-port
CMD ["build.sh"]
