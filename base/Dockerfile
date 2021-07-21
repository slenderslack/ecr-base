FROM ubuntu:devel@sha256:4a6f8c3a917a830c22b2e41ad353e9c9b3e6710f36ed220a815f2a09cb3f7389
# ARG REVISION
# ARG SOURCE
# LABEL org.opencontainers.image.revision=$REVISION
# LABEL org.opencontainers.image.source=$SOURCE
RUN echo '{:version 72}' > dog.json
CMD ["cat", "dog.json"]
