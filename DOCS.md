# TTLock2MQTT Add-on

Integrating your TTLock devices with Home Assistant over MQTT

## Installation

1. Add the repository URL via the Hassio Add-on Store Tab: **https://github.com/MatterVN/HassioAddon**
2. Follow this [intructions](https://github.com/tonyldo/ttlockio) to get your `TTLOCK_CLIENT_ID` and `TTLOCK_CLIENT_SECRECT`
3. Configure the "TTLock2MQTT" add-on.
4. Start the "TTLock2MQTT" add-on.

## Configuration

**Note**: _Remember to restart the add-on when the configuration is changed._


```yaml
TTLock_username: YOUR_TTLOCK_DEVELOPER_ACCOUNT
TTLock_password: YOUR_TTLOCK_DEVELOPER_PASSWORD
TTLock_client_Id: YOUR_TTLOCK_CLIENT_APP
TTLock_client_secrect: YOUR_TTLOCK_CLIENT_SECRET
Log_level: info
Publish_State_delay: 60
Publish_Battery_delay: 300
Maxthreads: 200
```

### Options: `TTLock_username` *and* `TTLock_password`
Your developer account you created.

### Options: `TTLock_client_Id` *and* `TTLock_client_secrect`
You need to wait for your app to be reviewed. It will takes several days.

### Option: `Log_level`
- `debug`: Shows detailed debug information.
- `info`: Default informations.
- `warning`: Little alerts.
- `error`:  Only errors.

### Option: Publish_State_delay and Publish_Battery_delay
Time between two information publish in seconds.

### Option: Maxthreads
Max number of threads for execution and the default number is 200. If you have more than 200 locks and gateway try two increase this number.

### MQTT Broker:
If you don't know what this is, install this addon:
https://github.com/home-assistant/hassio-addons/tree/master/mosquitto
This addon will communicate with Hass to get MQTT credential. You don't need to do anything.