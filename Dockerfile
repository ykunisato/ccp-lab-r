FROM ykunisato/paper-r
LABEL maintainer="Yoshihiko Kunisato <kunisato@psy.senshu-u.ac.jp>"

# Install JAGS and other linux packages
RUN apt-get update && apt-get install -y \
    jags \
    libgsl0-dev \
    tcl8.6-dev \
    tk8.6-dev\
    openmpi-bin\
    libglpk-dev \
    libcgal-dev \
    libglu1-mesa-dev \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

# install R packages
COPY install_r.r install_r.r
RUN ["r", "install_r.r"]
