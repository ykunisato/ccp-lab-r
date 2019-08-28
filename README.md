# Dockerfile for Rstudio in Computational Clinical Psychology Lab

This is a repository of Dockerfile for Rstudio used in [Computational Clinical Psychology Lab](https://kunisatolab.github.io/english/index.html). This Dockerfile contains

- general modeling packages (rstan, rjags)
- [cognitive modeling packages](https://hub.docker.com/r/ykunisato/cog-model-r)
- [psychological networks modeling packages](https://hub.docker.com/r/ykunisato/psynet-r)
- [network meta-analysis packages](https://hub.docker.com/r/ykunisato/netmeta-r)
- EEG analysis packages([eegUtils](https://github.com/craddm/eegUtils),[mne-r](https://github.com/mne-tools/mne-r)(not working now)).

This Dockerfile is based on [ykunisato/paper-r](https://hub.docker.com/r/ykunisato/paper-r).

Maintainer is Yoshihiko Kunisato (ykunisato@psy.senshu-u.ac.jp)

## Usage

1. Install ["Docker Desktop"](https://www.docker.com/products/docker-desktop)

2. Open "terminal"(Mac) or Command Prompt(Win, I don't know Win. Sorry!)

3. Type the following code to pull a Docker container. Change the "password" and "name_of_container" as you like.

```
docker run -e PASSWORD=password -p 8787:8787 -v ~:/home/rstudio -d --name name_of_container ykunisato/ccp-lab-r
```

4. Open the web browser and type "http://localhost:8787/" in the URL bar.

5. You will see the Rstudio on the web browser. Type rstudio in ID column and password that you set in password column.
