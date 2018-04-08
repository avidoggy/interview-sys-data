#! /bin/bash

docker run -it \
    -p 8080:8080 \
    -p 8888:8888 \
    -p 4040:4040 \
    -v $(pwd)/4-data-analysis:/root/jupyter-notebook \
    --rm \
    --name test \
    bitcat/spark jupyter-notebook \
        --ip 0.0.0.0 \
        --allow-root \
        --notebook-dir /root
