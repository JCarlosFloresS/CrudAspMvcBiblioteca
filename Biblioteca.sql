create database Biblioteca 

use Biblioteca 
go

create table Usuarios(
	Nombre Varchar(30) primary key,
	Contraseña Varchar(50)
)

create table Libro(
	Id int primary key Identity (1000,1),
	Nombre nvarchar(max),
	Autor char(30),
	Fecha Datetime
)

create table Bibliotecass(
	Id int primary key identity (1000,1),
	Nombre_Usuario varchar(30),
	Id_Libro int
)

Alter table Biblioteca Add Foreign key (Nombre_Usuario) references Usuarios (Nombre)
Alter table Biblioteca Add Foreign key (Id_Libro) references Libro (Id)