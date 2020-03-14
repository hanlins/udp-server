all: save

build: server.go
	docker build . -t udp:latest

save: build
	docker save udp:latest -o udp.tar

run:
	docker run --rm -e "MY_POD_NAME=testing-local" -p 3333:3333/udp -it udp:latest

clean:
	rm -rf udp.tar

.PHONY: clean build

