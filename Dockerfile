FROM ghcr.io/berriai/litellm:main-latest

WORKDIR /app

COPY config.yaml /app/config.yaml

RUN chmod 644 /app/config.yaml

ENV LITELLM_CONFIG_PATH=/app/config.yaml
ENV UVICORN_HOST=0.0.0.0

# Bez "litellm" - już jest w ENTRYPOINT
CMD ["sh", "-c", "--config /app/config.yaml --host 0.0.0.0 --port ${PORT:-8080}"]