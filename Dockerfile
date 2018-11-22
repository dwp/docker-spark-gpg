### 1. Get Linux
FROM alpine:3.7

### 2. Get required packages via the package manager
RUN apk update \
	&& apk upgrade \
	&& apk add --no-cache gnupg \
	&& apk add --no-cache bash \
	&& apk add --no-cache --virtual=build-dependencies unzip \
	&& apk add --no-cache curl \
	&& apk add --no-cache openjdk8-jre
### 3. Get Python2, PIP
RUN apk add --no-cache python2 \
	&& python2 -m ensurepip \
	&& pip install --trusted-host=pypi.python.org --trusted-host=pypi.org --trusted-host=files.pythonhosted.org --upgrade pip setuptools \
	&& rm -r /usr/lib/python*/ensurepip && \
	if [ ! -e /usr/bin/pip ]; then ln -s pip2 /usr/bin/pip ; fi && \
	if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python2.7 /usr/bin/python; fi && \
	rm -r /root/.cache \
### 4. Get pypandoc ,pyyaml and pyspark from pip
	&& pip install --trusted-host=pypi.python.org --trusted-host=pypi.org --trusted-host=files.pythonhosted.org pyyaml \
	&& pip install --trusted-host=pypi.python.org --trusted-host=pypi.org --trusted-host=files.pythonhosted.org pypandoc \
	&& pip install --trusted-host=pypi.python.org --trusted-host=pypi.org --trusted-host=files.pythonhosted.org  pyspark
### 5. Run shell script on start of container to import all gpg keys and go back to the root directory
CMD echo "Importing GPG Keys" \
	&& cd /root/gpg \
	&& gpg --import *.asc \
	&& echo "The following Keys have been imported:" \
	&& gpg --list-keys \
	&& echo "Change working directory to home directory" \
	&& cd /root \
	&& /bin/bash
