# docker-spark-gpg
Docker Alpine image with Spark, Python 2, Java and GPG. Used for local dev environment.

The docker container is automatically published to https://hub.docker.com/r/danhill2802/spark-gpg/

Instructions


1. Run the command in order to mount the export-data folder , the TestData folder and the gpg folder on to the root of the Docker container

'docker run -v ~/export-data:/root/export-data -v ~/Spark:/root/Spark -v ~/gpg:/root/gpg -it danhill2802/spark-gpg:latest bash'


NOTE: The gpg keys in the mounted directory will have already been imported. Use the command 'gpg --list-keys' to see a list of all keys imported.



