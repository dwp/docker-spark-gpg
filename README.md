# docker-spark-gpg
Docker Alpine image with Spark, Python, Java and gpg. Used for loacal dev environment.

Instructions

1. Install Docker from Self Service

2. Open Docker via finder on your machine in order to have Docker running in the background

3. Open the terminal and type 'docker–version' to make sure that docker has been installed

4. Pull the image from Docker hub via the 'docker pull' command

5. Use 'docker images' to make sure the image has been pulled on to your machine

6. Clone the repo https://github.ucds.io/dip/export-data

7. Run the command in order to mount the export data folder on to the root of the Docker container
`docker run -v ~/export-data:/root/export-data -v ~/export-data/gpg:/root/gpg -it [IMAGE_NAME]:latest bash`

8. You should now be inside the docker container and be able to see the export-data directory


