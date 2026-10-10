# Evidencias reales

Capturas proporcionadas durante la implementación. Los nombres se normalizaron sin alterar el contenido.

| Imagen | Qué demuestra |
|---|---|
| [Caja](caja-venta.png) | Aplicación con venta registrada, cuatro ventas y total RD$ 11,550 |
| [SSH desde VLAN 10](ssh-vlan10-denegado.png) | Intentos a .2, .3 y .4 con timeout; interpretar junto con los logs |
| [SSH desde VLAN 20 a DB](ssh-vlan20-db.png) | Sesión abierta en srv-db tras autenticación |
| [Logs](logs-control-acceso.png) | Denegaciones DMZ a LAN, SSH denegado desde VLAN 10 y permitido desde VLAN 20 |
| [Políticas](politicas-fortigate.png) | Matriz visible en la GUI del FortiGate |

## SSH denegado

![SSH VLAN 10](ssh-vlan10-denegado.png)

## SSH permitido

![SSH VLAN 20 a DB](ssh-vlan20-db.png)

Las capturas son evidencia de la sesión, no un certificado del estado actual. Falta adjuntar la captura de la página de bloqueo, DHCP y seguridad de switches para reunir la evidencia visual completa. El banner de hora del FortiGate aparece en las capturas originales; no se utiliza para certificar la cronología.
