FROM ghcr.io/berriai/litellm:main-latest

WORKDIR /app

COPY config.yaml /app/config.yaml

RUN chmod 644 /app/config.yaml

ENV LITELLM_CONFIG_PATH=/app/config.yaml

EXPOSE 4000

CMD ["litellm", "--config", "/app/config.yaml", "--port", "4000", "--host", "0.0.0.0"]