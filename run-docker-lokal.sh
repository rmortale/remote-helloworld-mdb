#!/bin/bash

docker run --env-file ./dev-env.env -p 8080:8080 --rm --add-host=artemis:192.168.0.132 remote-helloworld-mdb
