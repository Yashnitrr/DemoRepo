FROM ubuntu
MAINTAINER YASHTRIAL
ARG GIT_COMMIT=unspecified
LABEL git_commit=$GIT_COMMIT
RUN apt-get update && apt-get install -y python
ADD CreateCSV.py /
ENTRYPOINT ["python","./CreateCSV.py"]
