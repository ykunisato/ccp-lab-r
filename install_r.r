# install R packages for cognitive modeling
install.packages(c("rjags",
"Rsolnp",
"ReinforcementLearning",
"MDPtoolbox",
"rtdists",
"DstarM",
"hBayesDM",
"truncdist",
"statmod",
"pracma",
"snowfall",
"rlecuyer",
"vioplot",
"BiocManager"), error = TRUE, dependencies = TRUE)

BiocManager::install(c("graph", "RBGL", "Rgraphviz"), update = TRUE, ask = FALSE)

remotes::install_github(c("yxlin/ggdmc",'craddm/eegUtils'), dependencies = TRUE)


# install R packages for network meta analysis
install.packages(c("gemtc",
"netmeta",
"ggnetwork"), error = TRUE, dependencies = TRUE)


# install R packages for psychological network modeling
install.packages(c("qgraph",
"IsingFit",
"IsingSampler",
"mlVAR",
"graphicalVAR",
"bootnet",
"mgm",
"NetworkComparisonTest",
"networktools",
"gimme",
"NetworkToolbox",
"pcalg",
"networktree",
"bnlearn",
"semPlot",
"EGAnet"), error = TRUE, dependencies = TRUE)

remotes::install_github(c("donaldRwilliams/GGMnonreg","donaldRwilliams/BGGM"), dependencies = TRUE)
# remotes::install_github("sachaepskamp/psychonetrics")