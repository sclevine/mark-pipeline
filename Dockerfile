FROM amidos/dcind

# ...
RUN sed -i 's/docker daemon/docker daemon --mtu=1400/' /docker-lib.sh

RUN apk --update --no-cache add git openjdk8 && rm -rf /var/cache/apk/*

RUN curl -fsSL "https://cli.run.pivotal.io/stable?release=linux64-binary" | tar -C "/usr/local/bin" -xz cf

RUN cf install-plugin cflocal -f
