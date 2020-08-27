/*Un procedimiento almacenado (STORE PROCEDURE) está formado por un conjunto de instrucciones Transact-SQL que definen 
un determinado proceso a ejecutar, puede aceptar parámetros de entrada y devolver un valor o conjunto de resultados. 
Este procedimiento se guarda en el servidor y puede ser ejecutado en cualquier momento.
Los procedimientos almacenados se crean mediante la sentencia CREATE PROCEDURE y se ejecutan con EXEC (o EXECUTE).
Para ejecutarlo también se puede utilizar el nombre del procedimiento almacenado sólo, siempre que sea la primera palabra del lote. 
Para eliminar un procedimiento almacenado utilizamos la sentencia DROP PROCEDURE.*/
create database db_ProcedimientosAlmacenados

create table tbl_user
(
	id int,
	nombre varchar(50),
	apellidoPaterno varchar(50),
	apellidoMaterno varchar(50),
	edad int
)

--------stored procedure (sintaxis)---------

			/*create proc nombre_SP
			(
				---Parametros de entrada-----
				@var1 int,
				@var2 varchar(50)
			)
			as
			begin
				---procesamiento de información---
			end*/
go
CREATE Procedure SP_InsercionRegistros
(
	@id int,
	@nombre varchar(50),
	@apellidoPaterno varchar(50),
	@apellidoMaterno varchar(50),
	@edad int
)
as
begin
	-------Inserción Stored Procedure--------
	insert into tbl_user (id, nombre, apellidoPaterno, apellidoMaterno, edad)
	values (@id, @nombre, @apellidoPaterno, @apellidoMaterno, @edad)

	-------Inserción Simple--------
	/*insert into tbl_user (id, nombre, apellidoPaterno, apellidoMaterno, edad)
	values (1, 'Ale', 'Astdillo', 'Tama', 30)*/
end
go

exec SP_InsercionRegistros 2,'Pablo','Kohls','Reyes',25


Select * from tbl_user


  
