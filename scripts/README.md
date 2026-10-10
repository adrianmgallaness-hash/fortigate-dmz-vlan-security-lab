# Scripts y aplicaciones

`sql/caja-ventas.sql` reproduce el bloque SQL mostrado y ejecutado durante la práctica: creación de la tabla y datos iniciales. Es una reconstrucción documental del texto de la sesión; no es un volcado del estado actual. No ejecutarlo de nuevo sobre una base ya poblada.

`verificacion-servidor.sh` reúne comandos de diagnóstico utilizados en la práctica. El archivo se preparó para esta documentación; no se afirma que este archivo existiera o se ejecutara antes.

## Código real que falta incorporar

| Equipo | Archivo desplegado | Destino en este repositorio |
|---|---|---|
| srv-caja | /var/www/html/index.php | apps/caja/index.php |
| srv-inventario | /var/www/html/index.php | apps/inventario/index.php |
| srv-caja | /etc/caja-db.php | apps/caja/caja-db.example.php, sin contraseña |
| srv-inventario | /etc/inventario-db.php | apps/inventario/inventario-db.example.php, sin contraseña |

Añadir también cualquier script auxiliar realmente utilizado. Exportar las estructuras actuales desde srv-db con:

```bash
sudo mariadb-dump --no-data --databases caja inventario > esquema-aplicaciones.sql
```

Ese archivo debe incorporarse a `scripts/sql/` después de revisarlo. No publicar volcados de `mysql.user` ni contraseñas.
