FROM bioconductor/release_core2
MAINTAINER Wanding Zhou (zhouwanding@gmail.com)
CMD ["date"]

ADD sesame_install.R /tmp/

RUN R -f /tmp/sesame_install.R

