FROM amitie10g/msys2-mingw-w64-gcc:servercore-20H2

# Set the PATH env
RUN setx path "%path%;C:\msys64;C:\msys64\usr\bin;C:\msys64\mingw64\bin"

# Download sm64-port source tree and required packages
WORKDIR C:\\msys64\\home\\sm64\\
RUN bash -c "pacman --noconfirm -S python3 git"
RUN bash -c "git clone --depth=1 --branch=master https://github.com/sm64-port/sm64-port.git && rm -fr sm64-port/.git"

COPY build.sh C:\\msys64\\home\\sm64\\sm64-port\\build.sh

WORKDIR C:\\msys64\\home\\sm64\\sm64-port
CMD ["bash", "/home/sm64/sm64-port/build.sh"]
