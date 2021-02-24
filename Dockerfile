FROM amitie10g/mingw-w64-toolchain

WORKDIR C:\\msys64\\home\\sm64\\

# Download required packages and sm64-port source tree
RUN	bash -c "pacman --noconfirm -S python3 && rm -r /var/cache/pacman/pkg/*" && \
	curl -L https://github.com/sm64-port/sm64-port/archive/master.zip --output sm64-port.zip && \
	unzip -qq sm64-port.zip && \
	mv sm64-port-master sm64-port && \
	rm sm64-port.zip

COPY build.sh C:\\msys64\\home\\sm64\\sm64-port\\build.sh

WORKDIR C:\\msys64\\home\\sm64\\sm64-port
CMD ["bash", "/home/sm64/sm64-port/build.sh"]
