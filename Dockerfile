FROM alpine
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.71.0/hugo_0.71.0_Linux-64bit.tar.gz
RUN tar xzf hugo_0.71.0_Linux-64bit.tar.gz -C /usr/local/bin
RUN rm hugo_0.71.0_Linux-64bit.tar.gz
WORKDIR /site
CMD ["hugo", "serve"]
EXPOSE 1313