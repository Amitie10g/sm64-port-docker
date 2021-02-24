# sm64-port in Docker container
This is an attemp to bring the [sm64-port](https://github.com/sm64-port/sm64-port) (Super Mario 64 port for PC) source tree and build tools onto a Windows Server Docker image. The ``linux`` branch contains an alternative Dockerfile for Linux, using the [GCC](https://hub.docker.com/_/gcc) base image.

Currently, only [Windows Server Core](https://hub.docker.com/_/microsoft-windows-servercore) is suported, as any MSYS executable is unable to run under [Nano Server](https://hub.docker.com/_/microsoft-windows-nanoserver).

## Caveats
Image is HUUUUUUGE due the use of Windows Server Core base image and then MinGW toolchain used.

## Licensing
* The **Dockerfile** has been released into the **public domain** (the Unlicense)
* The Docker image usages are subjected to the **[Microsoft EULA](https://docs.microsoft.com/en-us/virtualization/windowscontainers/images-eula)**
* MSYS2 packages, namely [GNU Bash](https://www.gnu.org/software/bash/) and [GCC](https://gcc.gnu.org/) are licensed under the [GNU General Public License verssion 3](https://www.gnu.org/licenses/gpl-3.0.txt)
