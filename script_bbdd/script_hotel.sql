--Eliminat tablas
DROP TABLE CORE_RESERVA CASCADE CONSTRAINTS;
DROP TABLE CORE_HABITACION CASCADE CONSTRAINTS;
DROP TABLE CORE_CATEGORIA_HABITACION CASCADE CONSTRAINTS;
DROP TABLE CORE_HOTEL CASCADE CONSTRAINTS;
DROP TABLE CORE_USERPROFILE CASCADE CONSTRAINTS;
DROP TABLE AUTH_GROUP CASCADE CONSTRAINTS;
DROP TABLE AUTH_GROUP_PERMISSIONS CASCADE CONSTRAINTS;
DROP TABLE AUTH_PERMISSION CASCADE CONSTRAINTS;
DROP TABLE AUTH_USER CASCADE CONSTRAINTS;
DROP TABLE AUTH_USER_GROUPS CASCADE CONSTRAINTS;
DROP TABLE AUTH_USER_USER_PERMISSIONS CASCADE CONSTRAINTS;
DROP TABLE DJANGO_ADMIN_LOG CASCADE CONSTRAINTS;
DROP TABLE DJANGO_CONTENT_TYPE CASCADE CONSTRAINTS;
DROP TABLE DJANGO_MIGRATIONS CASCADE CONSTRAINTS;
DROP TABLE DJANGO_SESSION CASCADE CONSTRAINTS;

--Poblar tablas

INSERT INTO CORE_HOTEL VALUES(1, 'Hotel Pacific Reef', 'San Martin 50, Viña del Mar');

INSERT INTO CORE_CATEGORIA_HABITACION VALUES(1, 'Turista', '30000');
INSERT INTO CORE_CATEGORIA_HABITACION VALUES(2, 'Premium', '70000');

INSERT INTO CORE_HABITACION VALUES(11, 'Habitación turista', 2, 1, 'Equpado con 2 camas individuales, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(12, 'Habitación turista', 2, 1, 'Equpado con 2 camas individuales, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(13, 'Habitación turista', 2, 1, 'Equpado con 2 camas individuales, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(14, 'Habitación turista', 2, 1, 'Equpado con 2 camas individuales, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(15, 'Habitación turista', 4, 1, 'Equpado con 2 camas individuales, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(16, 'Habitación turista', 4, 1, 'Equpado con 2 camas individuales, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(21, 'Habitación turista', 2, 2, 'Equpado con 1 cama de 2 plazas, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(22, 'Habitación turista', 2, 2, 'Equpado con 1 cama de 2 plazas, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(23, 'Habitación turista', 2, 2, 'Equpado con 1 cama de 2 plazas, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(24, 'Habitación turista', 2, 2, 'Equpado con 1 cama de 2 plazas, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(25, 'Habitación turista', 4, 2, 'Equpado con 1 cama de 2 plazas, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(26, 'Habitación turista', 4, 2, 'Equpado con 1 cama de 2 plazas, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(31, 'Habitación turista', 2, 3, 'Equpado con 1 cama de 2 plazas, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(32, 'Habitación turista', 2, 3, 'Equpado con 1 cama de 2 plazas, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(33, 'Habitación turista', 2, 3, 'Equpado con 1 cama de 2 plazas, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(34, 'Habitación turista', 2, 3, 'Equpado con 1 cama de 2 plazas, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(35, 'Habitación turista', 4, 3, 'Equpado con 1 cama de 2 plazas, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(36, 'Habitación turista', 4, 3, 'Equpado con 1 cama de 2 plazas, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(41, 'Habitación turista', 2, 4, 'Equpado con 2 camas individuales, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(42, 'Habitación turista', 2, 4, 'Equpado con 2 camas individuales, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(43, 'Habitación turista', 2, 4, 'Equpado con 2 camas individuales, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(44, 'Habitación turista', 2, 4, 'Equpado con 2 camas individuales, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(45, 'Habitación turista', 4, 4, 'Equpado con 2 camas individuales, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(46, 'Habitación turista', 4, 4, 'Equpado con 2 camas individuales, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(51, 'Habitación turista', 2, 5, 'Equpado con 2 camas individuales, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(52, 'Habitación turista', 2, 5, 'Equpado con 2 camas individuales, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(53, 'Habitación turista', 2, 5, 'Equpado con 2 camas individuales, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(54, 'Habitación turista', 2, 5, 'Equpado con 2 camas individuales, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(55, 'Habitación turista', 4, 5, 'Equpado con 2 camas individuales, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(56, 'Habitación turista', 4, 5, 'Equpado con 2 camas individuales, baño personal, televisión, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(61, 'Habitación premium con vista al mar', 2, 6, 'Equpado con 2 camas de 2 plazas, baño personal, televisión full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_premium_1.jpg', 'habitaciones/img_habitacion_premium_2.jpg', 'habitaciones/img_habitacion_premium_3.jpg', 2, 1);
INSERT INTO CORE_HABITACION VALUES(62, 'Habitación premium con vista al mar', 2, 6, 'Equpado con 2 camas de 2 plazas, baño personal, televisión full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_premium_1.jpg', 'habitaciones/img_habitacion_premium_2.jpg', 'habitaciones/img_habitacion_premium_3.jpg', 2, 1);
INSERT INTO CORE_HABITACION VALUES(63, 'Habitación premium con vista al mar', 4, 6, 'Equpado con 2 camas de 2 plazas, baño personal, televisión full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_premium_1.jpg', 'habitaciones/img_habitacion_premium_2.jpg', 'habitaciones/img_habitacion_premium_3.jpg', 2, 1);
INSERT INTO CORE_HABITACION VALUES(64, 'Habitación premium con vista al mar', 4, 6, 'Equpado con 2 camas de 2 plazas, baño personal, televisión full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_premium_1.jpg', 'habitaciones/img_habitacion_premium_2.jpg', 'habitaciones/img_habitacion_premium_3.jpg', 2, 1);
INSERT INTO CORE_HABITACION VALUES(71, 'Habitación premium con vista al mar', 2, 7, 'Equpado con 2 camas de 2 plazas, baño personal, televisión full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_premium_1.jpg', 'habitaciones/img_habitacion_premium_2.jpg', 'habitaciones/img_habitacion_premium_3.jpg', 2, 1);
INSERT INTO CORE_HABITACION VALUES(72, 'Habitación premium con vista al mar', 2, 7, 'Equpado con 2 camas de 2 plazas, baño personal, televisión full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_premium_1.jpg', 'habitaciones/img_habitacion_premium_2.jpg', 'habitaciones/img_habitacion_premium_3.jpg', 2, 1);
INSERT INTO CORE_HABITACION VALUES(73, 'Habitación premium con vista al mar', 4, 7, 'Equpado con 2 camas de 2 plazas, baño personal, televisión full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_premium_1.jpg', 'habitaciones/img_habitacion_premium_2.jpg', 'habitaciones/img_habitacion_premium_3.jpg', 2, 1);
INSERT INTO CORE_HABITACION VALUES(74, 'Habitación premium con vista al mar', 4, 7, 'Equpado con 2 camas de 2 plazas, baño personal, televisión full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_premium_1.jpg', 'habitaciones/img_habitacion_premium_2.jpg', 'habitaciones/img_habitacion_premium_3.jpg', 2, 1);



COMMIT;