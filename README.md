# Broker MQTT Mosquitto sem TLS (para SIM800L e ESP32)

Este projeto cria um broker MQTT no Railway, gratuito, sem TLS, compatível com dispositivos simples.

## Como usar

1. Crie uma conta gratuita em [Railway.app](https://railway.app).
2. Crie um novo projeto → “Deploy from GitHub”.
3. Envie esta pasta (`broker_mqtt_railway`) para o seu GitHub.
4. O Railway fará o deploy automático do Mosquitto.
5. Após deploy, acesse:
   - Host: `seu-projeto.up.railway.app`
   - Porta: `1883`
6. Use essas informações no código do ESP32.

## Código ESP32 (exemplo)

```cpp
const char* mqtt_server = "seu-projeto.up.railway.app";
const int mqtt_port = 1883;
const char* mqtt_user = "";
const char* mqtt_pass = "";
```

Pronto! Agora o ESP32 publicará e receberá mensagens MQTT pelo SIM800L sem TLS.
