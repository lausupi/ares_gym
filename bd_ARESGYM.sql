Create database bd_AresGym
use bd_AresGym

Create table clientes (
id int identity (1,1) primary key,
nombre_completo varchar (50) not null,
dni numeric (20,2) not null,
email varchar (200) not null UNIQUE
) 


Create table productos (
Id int identity (1,1) primary key,
Nombre varchar (100) not null,
Descripcion_del_producto TEXT,
Precio NUMERIC (8,2) not null,
clientes_id int not null,

constraint fk_clientes foreign key (clientes_id)
references clientes (id),
)

Create table planes (
Id int identity (1,1) primary key,
Tipo_plan varchar (100) not null,
Valor numeric (10,2) not null,

clientes_id int not null,

constraint fk_clientes_planes foreign key (clientes_id)
references clientes (id),
)

create TABLE Administrador (
id int identity (1,1) primary key,
nombre VARCHAR(100) NOT NULL,

email VARCHAR(150) NOT NULL,
contraseña VARCHAR(255) NOT NULL,
rol_usuario varchar (50)not null,
clientes_id int not null,

constraint fk_clientes_usuario foreign key (clientes_id)
references clientes (id),

productos_id int not null,

constraint fk_productos foreign key (productos_id)
references productos (id),

planes_id int not null,

constraint fk_planes foreign key (planes_id)
references planes (id),

)