export DIR=${PWD#}
docker run -d \
	-p 8888:80 \
	-p 33060:3306 \
	-v /home/roboto/devel/openexplorer:/var/codebase \
	-v $DIR/apache.conf:/etc/apache2/sites-available/000-default.conf \
	codewithpassion/docker-apache-php-mysql-redis
