FROM eclipse-temurin:23-jre-alpine

RUN apk update && \
    apk add libreoffice

WORKDIR /app

COPY convert-to-pdf.sh convert-to-pdf.sh
RUN chmod +x convert-to-pdf.sh

# Set the entrypoint
ENTRYPOINT ["/bin/sh", "/app/convert-to-pdf.sh"]
