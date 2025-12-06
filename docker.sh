docker stop ztools-container
docker rm ztools-container
docker rmi ztools-container
docker build -t ztools-container .

docker run -d \
-p 80:80 \
--name ztools-container \
--restart on-failure:5 \
-v /data/repos/nginx.conf:/etc/nginx/conf.d/default.conf \
ztools-container
