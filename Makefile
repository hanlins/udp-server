all: save

build: server.go
	docker build . -t udp:latest

save: build
	docker save udp:latest -o udp.tar

clean:
	rm -rf udp.tar

.PHONY: clean build

