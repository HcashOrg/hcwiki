# Build image
FROM python:3.6 as build

LABEL description="hcwiki build"
LABEL version="1.0"
LABEL maintainer "holdstockjamie@gmail.com"

USER root
WORKDIR /root

COPY ./ /root/

RUN pip install mkdocs && \
	pip install --user -r requirements.txt

RUN ./build_docs.sh && chmod -R a+rw site

# Serve image
FROM httpd:alpine

LABEL description="hcwiki serve"
LABEL version="1.0"
LABEL maintainer "holdstockjamie@gmail.com"

COPY --from=build ./root/site/ /usr/local/apache2/htdocs/
