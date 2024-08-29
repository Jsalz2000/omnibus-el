FROM oraclelinux:9
RUN dnf install -y \
    @ruby:3.1 \
    ruby-devel \
    cmake \
    gcc \
    git \
    patch \
    diffutils \
    xz \
    rpm-build \
    perl-File-Compare
