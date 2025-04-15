CREATE TABLE `productos` (
  `id` int PRIMARY KEY,
  `nombre` varchar(255),
  `cantidad` int,
  `precio` decimal
);

CREATE TABLE `ventas` (
  `id_venta` int PRIMARY KEY,
  `id_producto` int,
  `cantidad_vendida` int,
  `precio_unitario` decimal,
  `fecha` datetime
);

ALTER TABLE `ventas` ADD FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`);
