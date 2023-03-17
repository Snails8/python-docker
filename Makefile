
build:
	docker build -t python-docker . --no-cache

run:
	docker run -p 8000:8000 -v $(PWD)/src:/app/src -it python-docker
