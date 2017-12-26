PACKAGE=apt-cacher

.PHONY: build run stop

build:
	docker build -t "hiracchi/${PACKAGE}:latest" .

run:
	docker run -d \
		-p 3142:3142 \
		--name ${PACKAGE} \
		"hiracchi/${PACKAGE}"

rm:
	docker rm ${PACKAGE}

