FROM ghcr.io/berriai/litellm:main-latest

WORKDIR /app

COPY config.yaml /app/config.yaml

RUN chmod 644 /app/config.yaml

ENV LITELLM_CONFIG_PATH=/app/config.yaml
ENV UVICORN_HOST=0.0.0.0

CMD ["sh", "-c", "litellm --config /app/config.yaml --port ${PORT:-8080}"]