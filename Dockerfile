FROM gcc

# Don't ask for anything
ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /home/sm64/
RUN	apt-get update && \
	apt-get -y --no-install-recommends install \
		bsdmainutils \
		build-essential \
		pkg-config \
		libusb-1.0-0-dev \
		libsdl2-dev \
		git && \
		apt-get clean && \
        apt-get autoremove && \
        rm -rf /var/lib/apt/lists/*

RUN git clone --depth 1 https://github.com/sm64-port/sm64-port.git && \
	rm -fr sm64-port/.git*

COPY entrypoint.sh /home/sm64/sm64-port/entrypoint.sh

WORKDIR /home/sm64/sm64-port
CMD ["/home/sm64/sm64-port/entrypoint.sh"]
