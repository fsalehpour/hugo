FROM debian:latest
RUN wget -qO- https://github.com/gohugoio/hugo/releases/download/v0.71.1/hugo_extended_0.71.1_Linux-64bit.tar.gz \
    | tar xz -C /usr/local/bin
WORKDIR /site
CMD ["hugo", "serve"]
EXPOSE 1313
