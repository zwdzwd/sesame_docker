# sesame_docker

## USAGE

```
docker run -ti --rm -v <input_dir>:/input -v <output_dir>:/output zhouwanding/sesame:R3.6.1_Bioc3.10 openSesameToBeta.R /input /output/betas.rds
## note that <input_dir> and <output_dir> must be absolute path
```
