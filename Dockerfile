FROM ghcr.io/berriai/litellm:main-latest

WORKDIR /app

COPY config.yaml /app/config.yaml

RUN chmod 644 /app/config.yaml

ENV LITELLM_CONFIG_PATH=/app/config.yaml

EXPOSE 4000

# Najprostsze - używa domyślnego entrypoint
CMD ["--config", "/app/config.yaml"]