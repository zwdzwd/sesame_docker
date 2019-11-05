
FROM r-base:3.6.1
MAINTAINER Wanding Zhou (zhouwanding@gmail.com)
RUN R -e "install.packages("BiocManager")"
RUN apt-get update
RUN apt-get --assume-yes install libssl-dev libcurl4-openssl-dev libxml2-dev
RUN R -e "BiocManager::install("sesame", update=FALSE, ask=FALSE)"
RUN R -e "library(sesame)"
RUN cd /bin && \
    wget https://github.com/zwdzwd/sesame_docker/raw/master/openSesameToBeta.R && \
    chmod 755 openSesameToBeta.R

VOLUME [ "/input", "/output" ]

## usage
## docker run -ti --rm -v <input_dir>:/input -v <output_dir>:/output zhouwanding/sesame:R3.6.1_Bioc3.10 openSesameToBeta.R /input /output/betas.rds
## note that <input_dir> and <output_dir> must be absolute path