# Minimal Docker image for Woltka using Micromamba base
FROM mambaorg/micromamba:debian13-slim

# install Woltka
RUN micromamba create -y -n woltka -c conda-forge -c bioconda woltka==0.1.7 && \
    micromamba clean --all --yes
ENV ENV_NAME=woltka
