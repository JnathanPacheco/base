drop database if exists tiendaCafe;
create database tienda_cafe;
use tiendacafe;
drop table if exists cafe;
drop table if exists cliente;
drop table if exists proveedor;
drop table if exists factura;
-- drop table if exists cafe_factura;
-- drop table if exists factura_cafe;

create table cafe(
	id int auto_increment primary key,
	nombre varchar(25) not null,
    sabor enum('CAFE NEGRO','CORTADO','CAPUCHINO','IRLANDES','LAGRIMA'),
	medida enum('CHICO','MEDIANO','GRANDE')
);
	
create table cliente(
	id int auto_increment primary key,
    nombre varchar(25) not null,
    apellido varchar(25) not null,
    medioDePago enum('EFECTIVO','DEBITO','CREDITO')
    );
    
create table proveedor(
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	empresa varchar(25) not null,
	telefono varchar(15) not null
    );
    
create table factura(
	id int auto_increment primary key,
    id_cliente int not null,
    fecha date,
    id_cafe int not null,
    id_precio double not null
    );
    
    add constraint FK_factura_idCafe 
    foreign key (id_Cafe) 
    references cafes(id);
    
/*create table proveedor_cafe(
	id int auto_increment,
    id_proveedor int not null,
    id_cafe int not null,
    primary key(id),
    foreign key (id_proveedor) references proveedor(id),
    foreign key (id_cafe) references cafe(id)
    );
    
create table factura_cafe(
	id int auto_increment,
    id_factura int not null,
    id_cafe int not null,
    primary key(id),
    foreign key (id_factura) references factura(id),
    foreign key (id_producto) references cafe(id)
    );
    */
    
    
    
    
    
    
    