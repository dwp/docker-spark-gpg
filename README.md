# docker-spark-gpg
Docker Alpine image with Spark, Python, Java and gpg. Used for loacal dev environment.

Instructions


1. Run the command in order to mount the export-data folder , the TestData folder and the gpg folder on to the root of the Docker container

'docker run -v /Users/yasserkhan/Desktop/docker-spark-gpg/export-data:/root/export-data -v /Users/yasserkhan/Desktop/docker-spark-gpg/Spark:/root/Spark -v /Users/yasserkhan/Desktop/docker-spark-gpg/gpg:/root/gpg -it docker-spark-gpg :latest bash'


NOTE: The gpg keys in the mounted directory will have already been imported. Use the command 'gpg --list-keys' to see a list of all keys imported. There will be a total of 4


2. You should now be inside the docker container and be able to see the export-data directory

3. To call this for any single collection we would use:

python export_data.py -p /path/to/yaml/export_config.yaml -e /path/to/yaml/export_accepted_data_persondetails.yaml 

When you specifiy a collection , this will go to the directory /root/Spark/TestData/accepted-data/personDetails/personDetails.json By default you will need to create 
the directories accepted-data/personDetails. 

Once the output has ran successfull , this will spit the output in to the following location:

/root/Spark/OutputData and the Script in /root/Spark/Scripts



If we want to run all yamls in a given directory we would run below. In this directory you need to have the export_config.yaml as well as one or more collection yamls:

./export_data.sh /path/to/yaml 2018-09-25


