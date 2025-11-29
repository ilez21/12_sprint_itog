FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY go.* ./
RUN go mod download
COPY . .
RUN go build -o parcel-tracker .

FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/parcel-tracker .
CMD ["./parcel-tracker"]
