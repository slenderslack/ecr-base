FROM ubuntu:devel@sha256:f8779198ebc283eaa74bf8e8780aa69fe1533fcc7be16ee20c1673742e0f40eb
# ARG REVISION
# ARG SOURCE
# LABEL org.opencontainers.image.revision=$REVISION
# LABEL org.opencontainers.image.source=$SOURCE
RUN echo '{:version 68}' > dog.json
CMD ["cat", "dog.json"]
