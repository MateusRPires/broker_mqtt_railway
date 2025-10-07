FROM eclipse-mosquitto:2.0

EXPOSE 1883

# Copia configuração customizada
COPY mosquitto.conf /mosquitto/config/mosquitto.conf
