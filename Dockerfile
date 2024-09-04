FROM debian:bookworm-20240812-slim
RUN apt-get update -y && \
    apt-get install -y curl git build-essential
ENV RUST_VERSION stable
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain ${RUST_VERSION}
ENV PATH $PATH:$HOME/.cargo/bin
