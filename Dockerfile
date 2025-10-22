FROM ghcr.io/berriai/litellm:main-latest

WORKDIR /app

COPY config.yaml /app/config.yaml

RUN chmod 644 /app/config.yaml

ENV LITELLM_CONFIG_PATH=/app/config.yaml

# LiteLLM automatycznie użyje LITELLM_PORT z env
CMD ["--config", "/app/config.yaml", "--host", "0.0.0.0"]