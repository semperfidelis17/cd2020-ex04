FROM golang:1.11-alpine

# Set maintainer label: maintainer=[YOUR-EMAIL]
LABEL maintainer='simon.bergmaier@students.fh-hagenberg.at'

# Set working directory: `/src`
WORKDIR /src


# Copy local file `main.go` to the working directory
COPY main.go ./

# List items in the working directory (ls)
RUN ls

# Build the GO app as myapp binary and move it to /usr/
RUN CGO_ENABLED=0 go build -o /usr/myapp

#Expose port 8888
EXPOSE 8888

# Run the service myapp when a container of this image is launched
CMD ["/usr/myapp"]