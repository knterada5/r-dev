FROM r-base

ARG UID=1000
ARG GID=1000
ARG PSWD=pswd

RUN apt update \
    && apt install -y sudo \
    libcurl4-openssl-dev \
    libxml2-dev \
    libxt-dev \
    git \
    openssh-client \
    && usermod -u ${UID} docker && groupmod -g ${GID} docker \
    && gpasswd -a docker sudo \
    && echo "docker ALL=(ALL) ALL" >> /etc/sudoers \
    && echo "docker:${PSWD}" | chpasswd

USER docker

RUN R -e "install.packages('renv')" \
    && mkdir -p /home/docker/.cache/R/renv

WORKDIR /home/docker/workspace

CMD bash
