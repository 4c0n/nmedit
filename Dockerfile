FROM fedora:32

WORKDIR /app/nmedit

RUN dnf install -y \
        autoconf \
        automake \
        libtool \
        g++ \
        make \
        compat-wxGTK3-gtk2-devel \
        flex \
        bison \
        diffutils \
        alsa-lib-devel \
        tcl-devel \
    ; \
    dnf clean all;

COPY . /app/nmedit

RUN set -eux; \
    autoreconf; \
    ./configure; \
    make; \
    make install;
