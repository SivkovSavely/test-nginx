VERSION=1.0.0
BRANCHNAME=main

docker build \
    -t savelysivkov/my-nginx:latest \
    -t savelysivkov/my-nginx:$VERSION.$BRANCHNAME \
    .

docker push savelysivkov/my-nginx:latest
docker push savelysivkov/my-nginx:$VERSION.$BRANCHNAME
