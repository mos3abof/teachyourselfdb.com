# The default target
all: build

# Build the resume and the website
build: website

serve:
	zola serve --interface 0.0.0.0 --port 3002

website:
	zola build && echo "teachyourselfdb.com" > ./public/CNAME

.PHONY: all website resume
