FROM amitie10g/mingw-w64-mfc

# Download required packages and sm64-port source tree
WORKDIR C:\\Users\\ContainerUser
RUN	curl -L https://github.com/sm64-port/sm64-port/archive/master.zip --output sm64-port.zip && \
	busybox unzip -qq sm64-port.zip && \
	ren sm64-port-master sm64-port && \
	del sm64-port.zip && \

COPY build.sh C:\\Users\\ContainerUser\\sm64-port\\build.sh

CMD ["busybox", "sh", "/home/sm64/sm64-port/build.sh"]