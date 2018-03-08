FROM ubuntu
MAINTAINER YASHTRIAL
RUN apt-get update && apt-get install -y python
ADD CreateCSV.py /
ENTRYPOINT ["python","./CreateCSV.py"]
