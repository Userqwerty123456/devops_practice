FROM ubuntu:22.04

RUN apt-get update && apt-get install -y procps

WORKDIR /app

COPY scripts/monitor_loop.sh /app/monitor_loop.sh
COPY scripts/monitor.sh /app/monitor.sh

RUN chmod +x /app/monitor_loop.sh /app/monitor.sh

RUN mkdir -p /app/html

CMD ["/app/monitor_loop.sh"]
