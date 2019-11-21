# Ribo Ecosystem

This website gives a quick overview of the Ribo Ecosystem and provides 
links to the components of the system along with quick start instructions. 

## Locally Running

To develop this site locally, follow the instructions below.

First build the docker image:

```
docker build -t ribo-jekyll .
```

Then run the docker image:

```
docker run --rm  -p 4000:4000  --name ribo -v ${PWD}:/srv/jekyl ribo-jekyll
```
