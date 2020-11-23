FROM registry.fedoraproject.org/fedora:rawhide

RUN dnf update -y --nogpgcheck fedora-gpg-keys && \
    dnf update -y && \
    dnf install -y \
        augeas \
        autoconf \
        automake \
        bash-completion \
        ca-certificates \
        ccache \
        clang \
        cppi \
        diffutils \
        dnsmasq \
        dwarves \
        ebtables \
        firewalld-filesystem \
        gcc \
        gettext-devel \
        git \
        glibc-langpack-en \
        gtk-doc \
        iproute \
        iproute-tc \
        iscsi-initiator-utils \
        kmod \
        libtool \
        libwsman-devel \
        libxml2 \
        libxslt \
        lvm2 \
        make \
        meson \
        nfs-utils \
        ninja-build \
        numad \
        parted \
        perl \
        polkit \
        python3 \
        python3-docutils \
        python3-flake8 \
        qemu-img \
        radvd \
        rpcgen \
        rpm-build \
        scrub \
        sheepdog \
        vala \
        zfs-fuse && \
    dnf autoremove -y && \
    dnf clean all -y && \
    mkdir -p /usr/libexec/ccache-wrappers && \
    ln -s /usr/bin/ccache /usr/libexec/ccache-wrappers/i686-w64-mingw32-cc && \
    ln -s /usr/bin/ccache /usr/libexec/ccache-wrappers/i686-w64-mingw32-$(basename /usr/bin/gcc)

RUN dnf install -y \
        mingw32-curl \
        mingw32-dbus \
        mingw32-dlfcn \
        mingw32-gcc \
        mingw32-gettext \
        mingw32-glib2 \
        mingw32-gnutls \
        mingw32-headers \
        mingw32-libssh2 \
        mingw32-libxml2 \
        mingw32-pkg-config \
        mingw32-portablexdr \
        mingw32-readline && \
    dnf clean all -y

ENV LANG "en_US.UTF-8"
ENV MAKE "/usr/bin/make"
ENV NINJA "/usr/bin/ninja"
ENV PYTHON "/usr/bin/python3"
ENV CCACHE_WRAPPERSDIR "/usr/libexec/ccache-wrappers"

ENV ABI "i686-w64-mingw32"
ENV CONFIGURE_OPTS "--host=i686-w64-mingw32"
ENV MESON_OPTS "--cross-file=/usr/share/mingw/toolchain-mingw32.meson"
