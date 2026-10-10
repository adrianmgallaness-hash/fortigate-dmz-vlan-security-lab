-- Bloque transcrito de la sesión. Solo para una base caja sin tabla ventas.
-- No es un volcado del estado actual ni debe repetirse sobre la aplicación operativa.
USE caja;
CREATE TABLE ventas (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    producto VARCHAR(100) NOT NULL,
    cantidad INT UNSIGNED NOT NULL,
    precio_unitario DECIMAL(10,2) UNSIGNED NOT NULL,
    fecha TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO ventas (producto, cantidad, precio_unitario) VALUES
('Teclado', 2, 850.00),
('Mouse', 3, 450.00),
('Monitor', 1, 7500.00);
SELECT id, producto, cantidad, precio_unitario,
       cantidad * precio_unitario AS total
FROM ventas;
