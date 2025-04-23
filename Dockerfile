FROM alpine:latest
RUN apk --no-cache add ca-certificates
ADD https://github.com/pocketbase/pocketbase/releases/download/v0.21.1/pocketbase_0.27.1_linux_amd64.zip /pb.zip
RUN unzip /pb.zip -d /pb && chmod +x /pb/pocketbase
WORKDIR /pb
CMD ["./pocketbase", "serve", "--http=0.0.0.0:8080"]
