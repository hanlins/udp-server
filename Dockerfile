FROM golang:1.12.2-stretch

# add source code
ADD server.go multiport_server.go

# Expose port 3333
EXPOSE 3333

# run main.go
CMD ["go", "run", "multiport_server.go"]
