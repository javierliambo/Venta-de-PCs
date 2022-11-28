drop database if exists VentasPcs;
create database VentasPcs;
use VentasPcs;
create table cliente(
	nombre varchar(50),
	dni integer not null,
	correo varchar(100),
	telefono varchar(12),
	primary key (dni)
);
create table empleado(
	nombre varchar(50),
	legajo integer not null,
	horario time not null,
	primary key (legajo)
);


create table computadora(
	numeroComputadora integer not null auto_increment,
	precio double,
	paisorigen varchar(50),
	primary key (numeroComputadora)
);


create table componentes(
	numeroSerie integer,
	nombrecomponente varchar(150),
	marcafabricante varchar(100),
	precio double,
	impuesto double,
	descripcion varchar(500),
	primary key (numeroSerie)
);

create table facturacion(
	nFactura integer not null auto_increment,
	numeroComputadora integer,
	dni integer,
	legajo integer,
	fechafactu date,
	metodocompra varchar(50),
	primary key (nFactura),
	foreign key (dni) references cliente (dni),
	foreign key (numeroComputadora) references computadora (numeroComputadora),
	foreign key (legajo) references empleado(legajo)
);

create table compc(
	numeroComputadora integer,
	numeroSerie integer,
	foreign key (numeroComputadora) references computadora (numeroComputadora),
	foreign key (numeroSerie) references componentes (numeroSerie)
);
create table linea(
	nLinea integer not null auto_increment,
	nFactura integer,
	numeroComputadora integer,
	cant integer,
	primary key (nLinea),
	foreign key(nFactura) references facturacion (nFactura),
	foreign key(numeroComputadora) references computadora(numeroComputadora)
);


insert into componentes values (01,"Procesador","Intel co.",100000.00,500.00,"3,65 ghz 10 nucleos");
insert into componentes values (02,"Procesador","Intel co.",9000.00,500.00,"3,00 Ghz 2 nucleos");
insert into componentes values (03,"Procesador","AMD Inc.",3000.00,800.00,"3,50 Ghz 1 nucleo");
insert into componentes values (04,"Procesador","Dead Inside SA.",283.00,0.01,"5000 ghz con 255 nucleos");
insert into componentes values (05,"MemoriaRam","Corsair",32000.00,800.00,"16 gb de capacidad");
insert into componentes values (06,"MemoriaRam","Kingston",5000.00,500.00,"4 gb");
insert into componentes values (07,"MemoriaRam","Adata",15900.00,800.00,"16 gb de capacidad");
insert into componentes values (08,"MemoriaRam","Doxair",1.00,0.01,"750 gb de capacidad");
insert into componentes values (09,"TarjetaGrafica","Nvidia Co",94248.00,500.00,"GTX 1050 Ti con 4 gb de memoria");
insert into componentes values (10,"TarjetaGrafica","Nvidia Co",1299999.00,1500.00,"Radeon 6900 con 16 gb de memoria");
insert into componentes values (11,"TarjetaGrafica","AMD Inc.",299999.00,2500.00,"GTX 1660 con 6 gb de memoria");
insert into componentes values (12,"TarjetaGrafica","Nvidia Co.",3.00,0.01,"MTX 4050 con 244 gb de memoria");
insert into componentes values (13,"Fuente","Evga",6567.00, 500.00,"Fuente de 750w reales");
insert into componentes values (14,"Fuente","Evga",678932.00,7000.00,"Fuente de 5000w reales");
insert into componentes values (15,"Fuente","SUBLIME 4",4.00,0.04,"4w reales");
insert into componentes values (16,"Fuente","Evga",0.32, 0.01,"1545323w reale");
insert into componentes values (17,"Telcado","Redragon",13999.99,800.00,"semimecanico");
insert into componentes values (18,"Teclado","Logitech",5165.00,500.00,"membrana");
insert into componentes values (19,"Teclado","Apple",18000.00, 800.00,"Es un teclado gracioso de color blanco de membrana");
insert into componentes values (20,"Teclado","RAZER",0.69,0.01,"Gamer Mecanico");
insert into componentes values (21,"Mouse","Logitech",8000.00,500.00,"mouse G305 Logitech con 12000 dpi");
insert into componentes values (22,"Mouse","Razer",8999.00,500.00,"mouse Viper de Razer con 8500 dpi");
insert into componentes values (23,"Mouse","Kolke",3466.00,250.00,"mouse vertical KEM 248 Kolke con 1000 dpi");
insert into componentes values (24,"Mouse","LOGITECHxNVIDIA",0.01,0.01,"ES UN MOUSE GAMER MECANICO CON GRAFICA INTEGRADA TAMBIEN TIRA RASHOS LAZER POR SU OPTICA TIENE 255000 DE DPI Y ESTA RE LOKO");
insert into componentes values (25,"Monitor","Samsung",54679.00,800.00,"Samsung F22TX1 de 16");
insert into componentes values (26,"Monitor","Samsung",56589.00,800.00,"Samsung F22TX2 de 18´");
insert into componentes values (27,"Monitor","LG",55679.00,800.00,"LG 20MKRSXR1 de 16´");
insert into componentes values (28,"Monitor","LG",5.00,0.01,"LG 20MKRSXR3 de 20´");
insert into componentes values (29,"Mother","Msi",30500.00,800.00,"Mother MSI  B250m");
insert into componentes values (30,"Mother","Asus",18650.00,800.00,"asus PRIME B460M-A");
insert into componentes values (31,"Mother","Gigabyte",500.00,250.00,"Mother gb-ask Gygabyte");
insert into componentes values (32,"Mother","MSI",0.27,0.01,"UNA MOTHER 8250 M TERRIBLE MOTHER APROBADA POR SanTiAgo doRRegO de TNTECNO");

insert into computadora(numeroComputadora, paisorigen) VALUES (01, "China");
insert into computadora(numeroComputadora, paisorigen) VALUES (02, "Alemania");
insert into computadora(numeroComputadora, paisorigen) VALUES (03, "Rusia");
insert into computadora(numeroComputadora, paisorigen) VALUES (04, "Argentina");

insert into compc values (01,01);
insert into compc values (02,02);
insert into compc values (03,03);
insert into compc values (04,04);
insert into compc values (01,05);
insert into compc values (02,06);
insert into compc values (03,07);
insert into compc values (04,08);
insert into compc values (01,09);
insert into compc values (02,10);;
insert into compc values (03,11);
insert into compc values (04,12);
insert into compc values (01,13);
insert into compc values (02,14);
insert into compc values (03,15);
insert into compc values (04,16);
insert into compc values (01,17);
insert into compc values (02,18);
insert into compc values (03,19);
insert into compc values (04,20);
insert into compc values (01,21);
insert into compc values (02,22);
insert into compc values (03,23);
insert into compc values (04,24);
insert into compc values (01,25);
insert into compc values (02,26);
insert into compc values (03,27);
insert into compc values (04,28);
insert into compc values (01,29);
insert into compc values (02,30);
insert into compc values (03,31);
insert into compc values (04,32);

insert into empleado values("Marmol Sofia",01,"8:00");
insert into empleado values("Micheli Lucio",02,"12:00");
insert into empleado values("Aguilera Nayla",03,"16:00");
insert into empleado values("Rojas Javier",04,"20:00");

























