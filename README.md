# docker-spark-gpg
Docker Alpine image with Spark, Python, Java and gpg. Used for loacal dev environment.

Instructions

7. Run the command in order to mount the export data folder on to the root of the Docker container
`docker run -v ~/export-data:/root/export-data -v ~/export-data/gpg:/root/gpg -it docker-spark-gpg :latest bash`

8. You should now be inside the docker container and be able to see the export-data directory
