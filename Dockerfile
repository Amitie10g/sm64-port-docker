ARG WINDOWS_VERSION=latest
FROM amitie10g/mingw-w64-toolchain:$WINDOWS_VERSION

# Download required packages and sm64-port source tree
RUN	curl -L https://github.com/amitie10g/sm64-port/archive/master.zip --output sm64-port.zip && \
	unzip -qq sm64-port.zip && \
	ren sm64-port-master sm64-port && \
	del sm64-port.zip

COPY build.sh C:\\Users\\ContainerUser\\sm64-port\\build.sh

WORKDIR C:\\Users\\ContainerUser\\sm64-port
ENV MSYSTEM=MINGW64
CMD ["bash", "/home/sm64/sm64-port/build.sh"]