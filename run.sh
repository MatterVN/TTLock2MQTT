#!/usr/bin/env bashio

TTLOCK_USER=$(bashio::config 'ttlock_username')
TTLOCK_PASS=$(bashio::config 'ttlock_password')
TTLOCK_CLIENT_ID=$(bashio::config 'ttlock_client_id')
TTLOCK_SECRET=$(bashio::config 'ttlock_client_secrect')
MQTT_HOST=$(bashio::config 'mqtt_host')
MQTT_PORT=$(bashio::config 'mqtt_port')
MQTT_USER=$(bashio::config 'mqtt_username')
MQTT_PASS=$(bashio::config 'mqtt_password')
PUBLISH_STATE_DELAY=$(bashio::config 'publishstatedelay')
PUBLISH_BATTERY_DELAY=$(bashio::config 'publishbatterydelay')
LOG_LEVEL=$(bashio::config 'loglevel')

exec python3 /ttlock_adapter.py --tt_user=${TTLOCK_USER} --tt_pass=${TTLOCK_PASS} --tt_id=${TTLOCK_CLIENT_ID} --tt_secret=${TTLOCK_SECRET}  --mqtt_host=${MQTT_HOST} --mqtt_port=${MQTT_PORT} --mqtt_user=${MQTT_USER} --mqtt_pass=${MQTT_PASS} --State_delay=${PUBLISH_STATE_DELAY} --Battery_delay=${PUBLISH_BATTERY_DELAY} --log_level=${LOG_LEVEL}