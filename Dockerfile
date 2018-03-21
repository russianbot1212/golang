# This dockerfile builds the Go app inside the container, so the resulting image is large
FROM golang

WORKDIR /app

# Go is fussy about where the code is
ENV SRC_DIR=/go/src/github.com/nigeldeakin/getting-started-golang
# Copy the source code:
ADD . $SRC_DIR
# Build it:
RUN cd $SRC_DIR; go build -o myapp; cp myapp /app/

ENTRYPOINT ["./myapp"]