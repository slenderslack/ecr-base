FROM ubuntu:devel@sha256:4ead8f09d62038c60b69735e2ea80c6c9899ea2fc53302f8a8e741a0b0bca27c
ARG REVISION
ARG SOURCE
LABEL org.opencontainers.image.revision=$REVISION
LABEL org.opencontainers.image.source=$SOURCE
RUN echo '{:version 40}' > dog.json
CMD ["cat", "dog.json"]
