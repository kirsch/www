.PHONY: build view clean deploy

build:
	hugo

view:
	hugo server --bind=0.0.0.0 --port 1313

clean:
	rm -rf public resources

deploy: build
	aws s3 sync public/ s3://www.kirsch.org/ --delete
