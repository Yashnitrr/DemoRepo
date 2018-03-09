FROM ubuntu
MAINTAINER YASHTRIAL
ARG GIT_COMMIT=unspecified
LABEL git_commit=$GIT_COMMIT
RUN apt-get update && apt-get install -y python && pip install flask requests && \
    apk add --no-cache curl && \
    rm -rf /var/cache/apk/*
ADD CreateCSV.py /
ENTRYPOINT ["python","./CreateCSV.py"]
