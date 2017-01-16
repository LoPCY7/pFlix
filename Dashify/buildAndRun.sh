docker build -t dashify .
docker run -i -v $PWD/data:/data -t dashify /bin/bash