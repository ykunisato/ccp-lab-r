# Dockerfile for Rstudio in Computational Clinical Psychology Lab

This is a repository of Dockerfile for Rstudio used in [Computational Clinical Psychology Lab](https://kunisatolab.github.io/english/index.html). This Dockerfile is based on [ykunisato/paper-r](https://hub.docker.com/r/ykunisato/paper-r). This Dockerfile add cognitive modeling packages, psychological networks modeling packages, and network meta-analysis packages to [ykunisato/paper-r](https://hub.docker.com/r/ykunisato/paper-r). Maintainer is Yoshihiko Kunisato (ykunisato@psy.senshu-u.ac.jp)

## Usage

1. Install ["Docker Desktop"](https://www.docker.com/products/docker-desktop)

2. Open "terminal"(Mac) or Command Prompt(Win, I don't know Win. Sorry!)

3. Type the following code to pull a Docker container. Change the "password" and "name_of_container" as you like.

```
docker run -e PASSWORD=password -p 8787:8787 -v $PWD:/home/rstudio -d --name name_of_container ykunisato/ccp-lab-r
```

4. Open the web browser and type "http://localhost:8787/" in the URL bar.

5. You will see the Rstudio on the web browser. Type rstudio in ID column and password that you set in password column.


## This Dockerfile add following R packages.
### cognitive modeling packages

- ggdmc
- rjags
- Rsolnp
- ReinforcementLearning
- MDPtoolbox
- rtdists
- DstarM
- hBayesDM
- truncdist
- statmod
- pracma
- snowfall
- rlecuyer
- vioplot

### psychological networks modeling packages

- [qgraph](https://cran.r-project.org/web/packages/qgraph/index.html)
- [IsingFit](https://cran.r-project.org/web/packages/IsingFit/index.html)
- [IsingSampler](https://cran.r-project.org/web/packages/IsingSampler/index.html)
- [mlVAR](https://cran.r-project.org/web/packages/mlVAR/index.html)
- [graphicalVAR](https://cran.r-project.org/web/packages/graphicalVAR/index.html)
- [bootnet](https://cran.r-project.org/web/packages/bootnet/index.html)
- [mgm](https://cran.r-project.org/web/packages/mgm/index.html)
- [pcalg](https://cran.r-project.org/web/packages/pcalg/index.html)
- [NetworkComparisonTest](https://cran.r-project.org/web/packages/NetworkComparisonTest/index.html)
- [networktree](https://cran.r-project.org/web/packages/networktree/index.html)
- [networktools](https://cran.r-project.org/web/packages/networktools/index.html)
- [gimme](https://cran.r-project.org/web/packages/gimme/index.html)
- [NetworkToolbox](https://cran.r-project.org/web/packages/NetworkToolbox/index.html)
- [GGMnonreg](https://github.com/donaldRwilliams/GGMnonreg)
- [BGGM](https://github.com/donaldRwilliams/BGGM)
- [bnlearn](https://cran.r-project.org/web/packages/bnlearn/index.html)
- [igraph](https://cran.r-project.org/web/packages/igraph/index.html)
- [semPlot](https://cran.r-project.org/web/packages/semPlot/index.html)
- [EGAnet](https://cran.r-project.org/web/packages/EGAnet/index.html)

##### I will add following R packages in future
- [psychonetrics](https://github.com/SachaEpskamp/psychonetrics)
- [lvnet](https://cran.r-project.org/web/packages/lvnet/index.html)

### network meta-analysis packages

- gemtc
- netmeta
- ggnetwork

### EEG analysis packages

- eegUtils
