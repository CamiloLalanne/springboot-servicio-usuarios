INSERT INTO `usuarios` (username, password, enabled, nombre, apellido, email, edad) VALUES ('andres','$2a$10$ykhXmCAam5FUEF9GN.4Z8OwwWJidvMii6VFYe77cmS2X6oF6p4W86',1, 'Andres', 'Guzman','profesor@bolsadeideas.com',56);
INSERT INTO `usuarios` (username, password, enabled, nombre, apellido, email, edad) VALUES ('admin','$2a$10$qGyDfZLBB.SgLv7GCP3uZe3oM38fVtr58T1iZ1LNOvO61loNUAAaK',1, 'John', 'Doe','jhon.doe@bolsadeideas.com', 50);
INSERT INTO `usuarios` (username, password, enabled, nombre, apellido, email, edad) VALUES ('camilo','$2a$10$ykhXmCAam5FUEF9GN.4Z8OwwWJidvMii6VFYe77cmS2X6oF6p4W86',1, 'Camilo', 'Lalanne','c.lalanne92@gmail.com',27);

INSERT INTO `roles` (nombre) VALUES ('ROLE_USER');
INSERT INTO `roles` (nombre) VALUES ('ROLE_ADMIN');
INSERT INTO `roles` (nombre) VALUES ('ROLE_CAMILIN');

INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (1, 1);
INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (2, 2);
INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (2, 1);
INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (3, 2);
INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (3, 1);
INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (3, 3);
