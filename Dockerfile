FROM golang:1.22-alpine AS builder

WORKDIR /app
COPY go.mod main.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -o app .

FROM scratch
COPY --from=builder /app/app /app
ENTRYPOINT ["/app"]
