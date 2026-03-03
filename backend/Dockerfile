FROM rust:1.76 AS builder


WORKDIR /app


COPY Cargo.toml Cargo.lock ./


COPY src ./src
COPY templates ./templates


RUN cargo build --release


FROM debian:bookworm-slim

WORKDIR /app


RUN apt-get update && apt-get install -y ca-certificates && rm -rf /var/lib/apt/lists/*


COPY --from=builder /app/target/release/backend ./backend


COPY static ./static


EXPOSE 3000


CMD ["./backend"]
