# The default target
all: website

# Build the resume and the website
build: website 

image:
	docker build -t zola .

website:
	docker run \
		-u "$(id -u):$(id -g)" \
		-v $PWD:/app \
		--workdir /app \
		ghcr.io/getzola/zola:v0.19.2 \
		build

serve:
	docker run \
		-u "$(id -u):$(id -g)" \
		-v $PWD:/app \
		--workdir /app \
		-p 8080:8080 \
		ghcr.io/getzola/zola:v0.19.2 \
		serve \
		--interface 0.0.0.0 \
		--port 8080 \
		--base-url \
		localhost

.PHONY: all website
