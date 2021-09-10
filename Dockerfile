FROM centos:8

MAINTAINER Tomas Liumparas <tomas.liumparas@gmail.com>
LABEL maintainer="tomas.liumparas@gmail.com"


ENV HOME=/opt/app/root

# Install OS packages
RUN yum install -y \
    python38 \
    gcc \

    # envsubst
    gettext

# Install pip3 packages
    ## awscli
RUN pip3 install \
        mkdocs \
        mkdocs-material \
        mkdocs-markdownextradata-plugin \
        pymdown-extensions \
        Pygments \
        mkdocs-git-revision-date-localized-plugin