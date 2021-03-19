# JupyterHub configurations

In this repository you can find different configurations for running jupyterhub.
I tries to provide simple working configurations for jupyterhub based on docker-spawner. In each folder you can find the corresponding jupyterhub_config.py with a dokcer compose file to run the service.
First of all you need to build a jupyterhub docker images that includes all the libraries which we need for each configuration settings. This can be done by simply by running the Makefile:

```bash
$ make latest
```
If you wish to add more libraries, add them in the requirement.txt file and run the makefile as described.
This will build an docker image for jupyterhub with the name jupyterhub:latest.
Then you can navigate to each directory and run the jupyterhub by running the docker compose file there.

 ## Jhub_simple
 This is a simple configuration for jupyterhub with the following features:


 - Using Docker Spawner to run a standard Jupyter Notebook (Lab)
 - Dummy aouthenticator
 - Map a folder in the host to the notebook container as a persistent data storage

 ## Jhub_ssl
  This is a configuration for jupyterhub with the following features (in addition to the Jhub_simple):

 - Enabling https using ssl certificate and key for the jupyterhub

 For more information, see the corresponding README file.

## Jhub_multyspawner
This is jupyterhub service that provide a spwaner list of the notebook images:

 - Enabling the Multyspawning option to choose from a list of images.
 - Using dummy aouthenticator with a given password

## Jhub_nginx
A jupyterhub service which is running behind nginx as a reveres proxy with enabled https.

 - Running nginx as a reverse proxy in front of jupyterhub
 - Https enabled for nginx using ssl

For more information see the corresponding README.
