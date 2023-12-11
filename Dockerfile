FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    guacd \
    && rm -rf /var/lib/apt/lists/*

CMD ["/usr/sbin/guacd", "-f", "-b", "0.0.0.0", "-l", "4822"]
