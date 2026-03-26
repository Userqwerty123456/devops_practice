FROM ubuntu:22.04

RUN apt-get update && apt-get install -y procps

WORKDIR /app

COPY scripts/monitor.sh /app/monitor.sh

RUN chmod +x /app/monitor.sh

CMD ["/app/monitor.sh"] 
