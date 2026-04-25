.PHONY: build view clean

build:
	hugo

view:
	hugo server --bind=0.0.0.0 --port 1313

clean:
	rm -rf public resources
