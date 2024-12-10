# The default target
all: build

# Build the resume and the website
build: website

website:
	zola build && echo "teachyourselfdb.com" > ./public/CNAME

.PHONY: all website resume
