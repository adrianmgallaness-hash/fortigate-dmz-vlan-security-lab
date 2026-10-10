# Guía de demostración

## 1. Topología y redes

Mostrar GNS3 y, en FortiGate, **Network → Interfaces**. Identificar port2 con VLAN 10 y 20 y port3 con la DMZ /28. Abrir las VLAN y mostrar DHCP Server.

En cada PC:

```bash
hostname
ip -4 -br a
ip route
nmcli -f DHCP4.OPTION device show ens33
```

Explicación: cada cliente pertenece a una subred /25 y recibe configuración mediante DHCP.

## 2. Switches

En SW-LAN:

```text
show vlan brief
show interfaces trunk
show port-security
```

En SW-DMZ:

```text
show vlan brief
show port-security
```

Explicación: VLAN 10 y 20 para usuarios; VLAN 30 para servidores; límites de MAC en los puertos de acceso.

## 3. Aplicaciones

Desde USUARIO-2, abrir http://10.21.40.2/index.php y http://10.21.40.3/index.php. Registrar una venta en Caja.

En srv-db:

```bash
sudo mariadb -e "SELECT * FROM caja.ventas; SELECT * FROM inventario.productos;"
```

Explicación: las aplicaciones usan una DB central y la venta queda almacenada.

## 4. SSH exclusivo de VLAN 20

En USUARIO-2, ejecutar por separado y salir de cada sesión con `exit`:

```bash
ssh -o ConnectTimeout=5 adrian@10.21.40.2
ssh -o ConnectTimeout=5 adrian@10.21.40.3
ssh -o ConnectTimeout=5 adrian@10.21.40.4
```

Dentro de cada sesión, mostrar `hostname`. Repetir los tres intentos desde USUARIO-1: deben fallar. En **Log & Report → Forward Traffic**, mostrar aceptación por VLAN20-SSH-DMZ y denegación por BLOQUEAR-VLAN10-SSH-DMZ. Un timeout por sí solo no identifica qué control lo produjo; se acompaña del log.

## 5. Aviso visible de bloqueo

En Firefox de USUARIO-1 abrir http://10.21.40.3/index.php y mostrar la página de bloqueo. Después abrir http://10.21.40.2/index.php y mostrar Caja.

En **Policy & Objects → Firewall Policy**, abrir VLAN10-BLOQUEO-WEB-INVENTARIO. En **Security Profiles → Web Filter**, mostrar BLOQUEO-INVENTARIO-VLAN10.

## 6. Aislamiento DMZ → LAN

En srv-caja, usando las IP actuales de las PCs:

```bash
ping -c 3 -W 2 10.21.39.10
ping -c 3 -W 2 10.21.39.140
```

En **Log & Report → Forward Traffic**, filtrar Source por 10.21.40.2 y mostrar Deny de BLOQUEAR-DMZ-VLAN10 y BLOQUEAR-DMZ-VLAN20. Finalizar con la matriz de políticas y los registros de las pruebas.
