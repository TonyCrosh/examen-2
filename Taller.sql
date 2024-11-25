create database Taller 
go

use Taller
go

create table equipo
(
id int identity primary key,
nombre varchar(100) not null,
equipo varchar(50) not null


)


create table 
(
id int identity primary key,
nombre varchar (100) not null,
fecha_nacimiento date,
idequipo int foreign key references equipo (id)

)


----- procedimientos almacenados
---- incresar
create procedure Ingresarusuario
@nombre varchar(100)
  as
    begin
	  insert into autor values (@nombre)
	  end

create procedure Consultausuario
 as
   begin
      select * from autor
   end


create procedure Borrarusuario
@id int
  as
    begin
	  delete autor where id=@id
	  end

create procedure Modificarusuario
@id int,
@nombre varchar(100)
  as
    begin
	  update autor set nombre =@nombre where id = @id
	  end

      