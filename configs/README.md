# Configuraciones

Las configuraciones completas deben exportarse del laboratorio. No se han fabricado running-configs a partir de las capturas.

## Switches

En cada switch, activar el registro de la consola y ejecutar:

```text
enable
terminal length 0
show running-config
```

Guardar la salida completa como `SW-LAN-running-config.txt` y `SW-DMZ-running-config.txt` en esta carpeta. Eliminar contraseñas, secretos y hashes de la copia destinada a publicación, señalando las líneas redactadas.

## FortiGate

En la GUI, abrir el menú del administrador y **Configuration → Backup**; seleccionar destino local y descargar la configuración. Conservar el original de forma privada. Publicar aquí una copia revisada como `FortiGate-config-sanitized.conf`, retirando secretos, hashes, claves privadas y credenciales. No ejecutar comandos del FortiGate para la demostración.

## Ubuntu

Los YAML de `referencia/` transcriben las últimas configuraciones mostradas en la sesión. No constituyen un export completo de los servidores. Caja e Inventario utilizan `/etc/netplan/50-cloud-init.yaml`; DB utiliza `/etc/netplan/01-nat-temporal.yaml` aunque ese nombre corresponde actualmente a su configuración permanente.
