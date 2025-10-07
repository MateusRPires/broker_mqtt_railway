FROM eclipse-mosquitto:2.0

# Criar pastas de dados e logs e dar permissão
RUN mkdir -p /mosquitto/data /mosquitto/log \
    && chown -R mosquitto:mosquitto /mosquitto

# Copia configuração customizada
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Expor porta MQTT
EXPOSE 1883

# Comando padrão do Mosquitto
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
