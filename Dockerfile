# BUILD:
# docker build --force-rm --tag "denissliva/psalm" .
# RUN:
# docker run --rm -v $(pwd):/psalm:rw "denissliva/psalm"
# PACKAGE: Psalm
# PACKAGE REPOSITORY: https://github.com/vimeo/psalm.git
# DESCRIPTION: Psalm is a static analysis tool for finding errors in PHP applications
FROM php:8.1-alpine
MAINTAINER labile <1a6i1e@gmail.com>

# Make the tools executable and install the tools
ADD https://github.com/vimeo/psalm/releases/latest/download/psalm.phar /usr/local/bin/psalm
RUN chmod +x /usr/local/bin/psalm

WORKDIR /psalm

ENTRYPOINT ["psalm"]
