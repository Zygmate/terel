FROM node:22-alpine3.19 AS build

# Add the community repository and update package index
RUN \
  echo "https://dl-cdn.alpinelinux.org/alpine/v3.19/community" >> /etc/apk/repositories && \
  echo "https://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
  echo "https://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
  apk update

# RUN \
#   apk add --no-cache --update --repository=https://dl-cdn.alpinelinux.org/alpine/v3.19/community \
#     musl-dev \
#     openssl-dev \
#     curl \
#     wget \
#     file \
#     xdotool-dev \
#     libayatana-appindicator-dev \
#     librsvg-dev \
#     libsoup3-dev

RUN \
  apk add \
      --no-cache \
      --repository=https://dl-cdn.alpinelinux.org/alpine/edge/main \
      --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community \
    musl-dev \
    openssl-dev \
    curl \
    wget \
    file \
    xdotool-dev \
    libayatana-appindicator-dev \
    librsvg-dev \
    libsoup3-dev \
    gcc \
    webkit2gtk-4.1-dev \
    gtk+3.0-dev \
    gdk-pixbuf-dev \
    pango-dev \
    cairo-dev \
    harfbuzz-dev \
    glib-dev \
    gobject-introspection-dev \
    wayland-dev \
    libintl \
    fuse \
    libc6-compat \
    sed


RUN \
  curl –proto ‘=https’ –tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y && \
  source $HOME/.cargo/env && \
  rustup target add x86_64-unknown-linux-musl

COPY ./terel-app /app
COPY ./docker/entrypoint.sh /

WORKDIR /app

# Modify the tauri.conf.json file to disable all package formats
# RUN printf '%s' '{"package": {"productName": "YourApp", "version": "1.0.0"}, "tauri": {"bundle": {"identifier": "com.example.app", "targets": []}}}' > src-tauri/tauri.conf.json

RUN \
  /usr/local/bin/yarn && \
  source $HOME/.cargo/env && \
  # https://stackoverflow.com/a/58774688
  export RUSTFLAGS='-C target-feature=-crt-static' && \
  export PKG_CONFIG_PATH="/usr/lib/pkgconfig:$PKG_CONFIG_PATH" && \
  sed -i 's|"targets": "all"|"targets": []|' ./src-tauri/tauri.conf.json && \
  cargo build --release --manifest-path ./src-tauri/Cargo.toml
  # DEBUG=true /usr/local/bin/yarn tauri build


FROM alpine:3.19

COPY --from=build /app/src-tauri/target/release/terel-app /
COPY --from=build /app /

RUN \
  apk add --no-cache \
    gtk+3.0 \
    webkit2gtk-4.1-dev \
    cairo \
    gdk-pixbuf \
    pango \
    glib \
    libgcc \
    libstdc++ \
    libsoup3

ENTRYPOINT [ "/terel-app" ]

# FROM akito13/alpine

# ARG TAG="v1.3.9"
# ARG BRANCH="master"
# ARG BUILD_VERSION
# ARG BUILD_REVISION
# ARG BUILD_DATE

# LABEL maintainer="Akito <the@akito.ooo>"
# LABEL org.opencontainers.image.authors="Akito <the@akito.ooo>"
# LABEL org.opencontainers.image.vendor="Akito"
# LABEL org.opencontainers.image.version="${BUILD_VERSION}"
# LABEL org.opencontainers.image.revision="${BUILD_REVISION}"
# LABEL org.opencontainers.image.created="${BUILD_DATE}"
# LABEL org.opencontainers.image.title="Example Docker Image"
# LABEL org.opencontainers.image.description="Example Docker Image for Akito/docker.tpl"
# LABEL org.opencontainers.image.url="akito.ooo"
# LABEL org.opencontainers.image.documentation="doc.akito.ooo"
# LABEL org.opencontainers.image.source="https://github.com/theAkito/docker-alpine"
# LABEL org.opencontainers.image.licenses="GPL-3.0+"

# RUN apk add --update \
#     alpine-sdk \
#     libressl-dev

# WORKDIR /root/rhash

# RUN git clone https://github.com/rhash/RHash.git /root/rhash && \
#     git fetch --all --tags --prune && \
#     #git checkout tags/${TAG} && \
#     git checkout ${BRANCH} && \
#     ./configure --enable-openssl --enable-static --disable-openssl-runtime && \
#     make

# ENTRYPOINT [ "/bin/bash" ]
# CMD [ "/entrypoint.sh" ]