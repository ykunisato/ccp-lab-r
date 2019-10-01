FROM ykunisato/paper-r
MAINTAINER "Yoshihiko Kunisato" ykunisato@psy.senshu-u.ac.jp

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
RUN Rscript -e "devtools::install_github('yxlin/ggdmc')"
RUN Rscript -e "install.packages('BiocManager')"
RUN Rscript -e "BiocManager::install(c('graph', 'RBGL', 'Rgraphviz'), update = TRUE, ask = FALSE)"
# RUN Rscript -e "devtools::install_github('sachaepskamp/psychonetrics')"
RUN Rscript -e "devtools::install_github('donaldRwilliams/GGMnonreg')"

RUN install2.r --error --deps TRUE \
# cognitive modeling
rjags \
Rsolnp \
ReinforcementLearning \
MDPtoolbox \
rtdists \
DstarM \
hBayesDM \
truncdist \
statmod \
pracma \
snowfall \
rlecuyer \
vioplot \
# network meta analysis
gemtc \
netmeta \
ggnetwork \
# psychological networks modeling
qgraph \
IsingFit \
IsingSampler \
mlVAR \
graphicalVAR \
bootnet \
mgm \
NetworkComparisonTest \
networktools \
gimme \
NetworkToolbox \
ggraph \
pcalg \
networktree

# psychological network　modeling
RUN Rscript -e "install.packages('bnlearn',dependencies = TRUE)"
RUN Rscript -e "install.packages('semPlot',dependencies = TRUE)"
RUN Rscript -e "install.packages('EGAnet',dependencies = TRUE)"
RUN Rscript -e "devtools::install_github('donaldRwilliams/BGGM')"

# EEG Analysis
RUN Rscript -e "devtools::install_github('craddm/eegUtils')"
