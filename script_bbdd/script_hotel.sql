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

INSERT INTO CORE_HOTEL VALUES(1, 'Hotel Pacific Reef', 'San Martin 50, Vi�a del Mar');

INSERT INTO CORE_CATEGORIA_HABITACION VALUES(1, 'Turista', '30000');
INSERT INTO CORE_CATEGORIA_HABITACION VALUES(2, 'Premium', '70000');

INSERT INTO CORE_HABITACION VALUES(11, 'Habitaci�n turista', 2, 1, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(12, 'Habitaci�n turista', 2, 1, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(13, 'Habitaci�n turista', 2, 1, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(14, 'Habitaci�n turista', 2, 1, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(15, 'Habitaci�n turista', 4, 1, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(16, 'Habitaci�n turista', 4, 1, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(21, 'Habitaci�n turista', 2, 2, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(22, 'Habitaci�n turista', 2, 2, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(23, 'Habitaci�n turista', 2, 2, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(24, 'Habitaci�n turista', 2, 2, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(25, 'Habitaci�n turista', 4, 2, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(26, 'Habitaci�n turista', 4, 2, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(31, 'Habitaci�n turista', 2, 3, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(32, 'Habitaci�n turista', 2, 3, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(33, 'Habitaci�n turista', 2, 3, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(34, 'Habitaci�n turista', 2, 3, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(35, 'Habitaci�n turista', 4, 3, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(36, 'Habitaci�n turista', 4, 3, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(41, 'Habitaci�n turista', 2, 4, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(42, 'Habitaci�n turista', 2, 4, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(43, 'Habitaci�n turista', 2, 4, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(44, 'Habitaci�n turista', 2, 4, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(45, 'Habitaci�n turista', 4, 4, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(46, 'Habitaci�n turista', 4, 4, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(51, 'Habitaci�n turista', 2, 5, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(52, 'Habitaci�n turista', 2, 5, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(53, 'Habitaci�n turista', 2, 5, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(54, 'Habitaci�n turista', 2, 5, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(55, 'Habitaci�n turista', 4, 5, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(56, 'Habitaci�n turista', 4, 5, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_turista_1.jpg', 'habitaciones/img_habitacion_turista_2.jpg', 'habitaciones/img_habitacion_turista_3.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(61, 'Habitaci�n premium con vista al mar', 2, 6, 'Equpado con 2 camas de 2 plazas, ba�o personal, televisi�n full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_premium_1.jpg', 'habitaciones/img_habitacion_premium_2.jpg', 'habitaciones/img_habitacion_premium_3.jpg', 2, 1);
INSERT INTO CORE_HABITACION VALUES(62, 'Habitaci�n premium con vista al mar', 2, 6, 'Equpado con 2 camas de 2 plazas, ba�o personal, televisi�n full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_premium_1.jpg', 'habitaciones/img_habitacion_premium_2.jpg', 'habitaciones/img_habitacion_premium_3.jpg', 2, 1);
INSERT INTO CORE_HABITACION VALUES(63, 'Habitaci�n premium con vista al mar', 4, 6, 'Equpado con 2 camas de 2 plazas, ba�o personal, televisi�n full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_premium_1.jpg', 'habitaciones/img_habitacion_premium_2.jpg', 'habitaciones/img_habitacion_premium_3.jpg', 2, 1);
INSERT INTO CORE_HABITACION VALUES(64, 'Habitaci�n premium con vista al mar', 4, 6, 'Equpado con 2 camas de 2 plazas, ba�o personal, televisi�n full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_premium_1.jpg', 'habitaciones/img_habitacion_premium_2.jpg', 'habitaciones/img_habitacion_premium_3.jpg', 2, 1);
INSERT INTO CORE_HABITACION VALUES(71, 'Habitaci�n premium con vista al mar', 2, 7, 'Equpado con 2 camas de 2 plazas, ba�o personal, televisi�n full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_premium_1.jpg', 'habitaciones/img_habitacion_premium_2.jpg', 'habitaciones/img_habitacion_premium_3.jpg', 2, 1);
INSERT INTO CORE_HABITACION VALUES(72, 'Habitaci�n premium con vista al mar', 2, 7, 'Equpado con 2 camas de 2 plazas, ba�o personal, televisi�n full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_premium_1.jpg', 'habitaciones/img_habitacion_premium_2.jpg', 'habitaciones/img_habitacion_premium_3.jpg', 2, 1);
INSERT INTO CORE_HABITACION VALUES(73, 'Habitaci�n premium con vista al mar', 4, 7, 'Equpado con 2 camas de 2 plazas, ba�o personal, televisi�n full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_premium_1.jpg', 'habitaciones/img_habitacion_premium_2.jpg', 'habitaciones/img_habitacion_premium_3.jpg', 2, 1);
INSERT INTO CORE_HABITACION VALUES(74, 'Habitaci�n premium con vista al mar', 4, 7, 'Equpado con 2 camas de 2 plazas, ba�o personal, televisi�n full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_premium_1.jpg', 'habitaciones/img_habitacion_premium_2.jpg', 'habitaciones/img_habitacion_premium_3.jpg', 2, 1);



COMMIT;