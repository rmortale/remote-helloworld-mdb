#!/bin/bash

mvn -Popenshift clean package
docker build . -t remote-helloworld-mdb
docker tag remote-helloworld-mdb localhost:5000/remote-helloworld-mdb:latest
docker push localhost:5000/remote-helloworld-mdb:latest



