FROM amitie10g/mingw-w64-gcc

# Download required packages
RUN bash -c "pacman --noconfirm -S python3 && rm -r /var/cache/pacman/pkg/*"

WORKDIR C:\\msys64\\home\\sm64\\

# Download sm64-port source tree
RUN	curl -L https://github.com/sm64-port/sm64-port/archive/master.zip --output sm64-port.zip && \
	7za -tzip x sm64-port.zip && \
	ren sm64-port-master sm64-port && \
	del sm64-port.zip

COPY build.sh C:\\msys64\\home\\sm64\\sm64-port\\build.sh

WORKDIR C:\\msys64\\home\\sm64\\sm64-port
CMD ["bash", "/home/sm64/sm64-port/build.sh"]
