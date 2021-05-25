FROM ubuntu:devel
ARG REVISION
ARG SOURCE
LABEL org.opencontainers.image.revision=$REVISION
LABEL org.opencontainers.image.source=$SOURCE
RUN echo '{:version 40}' > dog.json
CMD ["cat", "dog.json"]
