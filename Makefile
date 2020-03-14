all: save

build: server.go
	docker build . -t udp:latest

save:
	docker save udp:latest | gzip > udp.tar.gz

run:
	docker run --rm -e "MY_POD_NAME=testing-local" -p 3333:3333/udp -it udp:latest

clean:
	rm -rf udp.*

.PHONY: clean run

