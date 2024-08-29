FROM oraclelinux:7
RUN yum install -y \
    cmake \
    gcc \
    git \
    patch \
    diffutils \
    xz \
    rpm-build \
    which

RUN yum install --enablerepo=ol7_optional_latest libyaml-devel -y

RUN gpg2 --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN curl -sSL https://get.rvm.io | bash -s stable

RUN bash -lc "rvm requirements; \
        rvm install 3.0; \
        gem install bundler;\
        "