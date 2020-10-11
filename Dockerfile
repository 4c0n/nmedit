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
        alsa-lib \
        alsa-lib-devel \
        tcl-devel \
    ; \
    dnf clean all;

COPY --from=4c0n/libppf:latest /usr/local/include /usr/include
COPY --from=4c0n/libppf:latest /usr/local/lib/libppf.la /usr/lib/libppf.la
COPY --from=4c0n/libppf:latest /usr/local/lib/libppf.a /usr/lib/libppf.a
COPY . /app/nmedit

RUN set -eux; \
    autoreconf; \
    ./configure; \
    make; \
    make install;
