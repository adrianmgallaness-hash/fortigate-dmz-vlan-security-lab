# Configuraciones reales del laboratorio

| Equipo | Archivo | Procedencia |
|---|---|---|
| SW-LAN | [Running-config](SW-LAN-running-config.txt) | Salida de show running-config proporcionada por el autor |
| SW-DMZ | [Running-config](SW-DMZ-running-config.txt) | Salida de show running-config proporcionada por el autor |
| FortiGate | [Configuración saneada](FortiGate-config-sanitized.conf) | Backup .conf obtenido mediante GUI y adjuntado por el autor |

## Tratamiento de los archivos

En los switches se omitieron prompts, mensajes de consola y el encabezado del recuento de bytes; se normalizaron separadores vacíos y espacios anómalos en los banners. No se añadieron comandos de configuración. Se conservaron los avisos de licencia.

En FortiGate se sustituyeron por REDACTED las credenciales y el material criptográfico, incluidos certificados y claves. Esta copia es documental y **no debe restaurarse directamente**: conservar el original privado para recuperación.

## Observaciones de la configuración recibida

- Ambos switches contienen no ip routing.
- SW-LAN permite VLAN 10 y 20 en Gi0/0; Gi0/1 y Gi0/2 tienen Port Security con máximo de dos MAC, PortFast y BPDU Guard.
- SW-DMZ tiene VLAN 30 en Gi0/0–3, MAC sticky en los tres puertos de servidores y shutdown en Gi1/0–Gi3/3.
- SW-LAN no contiene shutdown en Gi0/3–Gi3/3. No se presentan esos puertos como administrativamente apagados.
- Las definiciones de VLAN no aparecen como bloques vlan en las salidas recibidas. Para una restauración completa, complementar con show vlan brief y la información de VLAN del equipo.
- El backup FortiGate identifica FortiOS 7.0.9 y contiene las interfaces VLAN/DMZ y las ocho políticas documentadas.

## Ubuntu

Los YAML de referencia/ son transcripciones de la configuración de red mostrada en la sesión. Faltan los paquetes reales de exportación de los tres servidores y el código PHP desplegado.
