FROM golang:1.12.2-stretch

# install netcat
RUN apt-get update && apt-get install -y \
    netcat 

# create a working directory
WORKDIR /go/src/multiport

# add source code
ADD server.go multiport_server.go

# Expose port 3333
EXPOSE 3333

# run main.go
CMD ["go", "run", "multiport_server.go"]
