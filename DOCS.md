# TTLock2MQTT Add-on

Integrating your TTLock devices with Home Assistant over MQTT

## Installation

1. Follow the instructions on [README](../README.md) of this repo to add it in Supervisor Add-on Store.
2. Follow this [intructions](https://github.com/tonyldo/ttlockio) to get your `TTLOCK_CLIENT_ID` and `TTLOCK_CLIENT_SECRECT`
3. Configure the "TTLock2MQTT" add-on.
4. Start the "TTLock2MQTT" add-on.

## Configuration

**Note**: _Remember to restart the add-on when the configuration is changed._


```yaml
ttlock_username: YOUR_TTLOCK_DEVELOPER_ACCOUNT
ttlock_password: YOUR_TTLOCK_DEVELOPER_PASSWORD
ttlock_client_id: YOUR_TTLOCK_CLIENT_APP
ttlock_client_secret: YOUR_TTLOCK_CLIENT_SECRET
mqttb_host: 'core-mosquitto'
mqtt_port: '1883'
mqtt_username: BROKER_USER
mqtt_password: BROKER_PASS
publishbatterydelay: 300
publishstatedelay: 60
loglevel: info
```

### Options: `ttlock_username` *and* `ttlock_password`
Your developer account you created.

### Options: `ttlock_client_id` *and* `ttlock_client_secret`
You need to wait for your app to be reviewed. It will takes several days.

### Options: `mqtt_host`, `mqtt_port`, `mqtt_username` *and* `mqtt_password`

Your MQTT Broker address and credentials. If you don't know what this is, install this addon:
https://github.com/home-assistant/hassio-addons/tree/master/mosquitto

### Option: `loglevel`

- `debug`: Shows detailed debug information.
- `info`: Default informations.
- `warning`: Little alerts.
- `error`:  Only errors.
