build:
	bundle exec jekyll build

server:
	bundle exec jekyll server

clean:
	rm -rf _site

.PHONY: build server clean
