USE [master]
GO
/****** Object:  Database [constru-tech]    Script Date: 8/09/2023 2:12:13 a. m. ******/
CREATE DATABASE [constru-tech]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'constru-tech', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\constru-tech.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'constru-tech_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\constru-tech_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [constru-tech] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [constru-tech].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [constru-tech] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [constru-tech] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [constru-tech] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [constru-tech] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [constru-tech] SET ARITHABORT OFF 
GO
ALTER DATABASE [constru-tech] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [constru-tech] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [constru-tech] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [constru-tech] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [constru-tech] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [constru-tech] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [constru-tech] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [constru-tech] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [constru-tech] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [constru-tech] SET  DISABLE_BROKER 
GO
ALTER DATABASE [constru-tech] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [constru-tech] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [constru-tech] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [constru-tech] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [constru-tech] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [constru-tech] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [constru-tech] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [constru-tech] SET RECOVERY FULL 
GO
ALTER DATABASE [constru-tech] SET  MULTI_USER 
GO
ALTER DATABASE [constru-tech] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [constru-tech] SET DB_CHAINING OFF 
GO
ALTER DATABASE [constru-tech] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [constru-tech] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [constru-tech] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [constru-tech] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'constru-tech', N'ON'
GO
ALTER DATABASE [constru-tech] SET QUERY_STORE = ON
GO
ALTER DATABASE [constru-tech] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [constru-tech]
GO
/****** Object:  Table [dbo].[categorias]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Estado] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[idCli] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[cedula] [varchar](50) NOT NULL,
	[fecha_nac] [varchar](50) NOT NULL,
	[estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado_especialidad]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado_especialidad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Empl] [int] NULL,
	[Id_Esp] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Direccion] [varchar](200) NULL,
	[Estado] [varchar](20) NULL,
	[Email] [varchar](200) NULL,
	[Telefono] [varchar](50) NULL,
	[Cedula] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[especialidades]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[especialidades](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Especialidad] [varchar](100) NULL,
	[Estado] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[libro]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[libro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](50) NULL,
	[autor] [varchar](50) NULL,
	[genero] [varchar](50) NULL,
	[fechapublicacion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materiales]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materiales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Estado] [varchar](20) NULL,
	[Precio] [int] NULL,
	[Cantidad] [int] NULL,
	[Id_Proveedor] [int] NULL,
	[Id_Cat] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permisos]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permisos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Permiso] [varchar](100) NULL,
	[Estado] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prestamo]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prestamo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idlibro] [int] NULL,
	[iduser] [int] NULL,
	[fechainicio] [varchar](255) NULL,
	[fechafin] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](200) NULL,
	[Direccion] [varchar](200) NULL,
	[Estado] [varchar](20) NULL,
	[Email] [varchar](200) NULL,
	[Telefono] [varchar](20) NULL,
	[Nombre_Contacto] [varchar](200) NULL,
	[Telefono_Contacto] [varchar](20) NULL,
	[Email_Contacto] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol_permiso]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol_permiso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Rol] [int] NULL,
	[Id_Permiso] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NULL,
	[Estado] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Apellido] [varchar](100) NULL,
	[Cedula] [int] NULL,
	[Clave] [varchar](200) NULL,
	[Id_Rol] [int] NULL,
	[Id_Empl] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[empleado_especialidad]  WITH CHECK ADD  CONSTRAINT [FK_EmplEsp] FOREIGN KEY([Id_Empl])
REFERENCES [dbo].[empleados] ([Id])
GO
ALTER TABLE [dbo].[empleado_especialidad] CHECK CONSTRAINT [FK_EmplEsp]
GO
ALTER TABLE [dbo].[empleado_especialidad]  WITH CHECK ADD  CONSTRAINT [FK_EspEmpl] FOREIGN KEY([Id_Esp])
REFERENCES [dbo].[especialidades] ([Id])
GO
ALTER TABLE [dbo].[empleado_especialidad] CHECK CONSTRAINT [FK_EspEmpl]
GO
ALTER TABLE [dbo].[materiales]  WITH CHECK ADD  CONSTRAINT [FK_MatCat] FOREIGN KEY([Id_Cat])
REFERENCES [dbo].[categorias] ([Id])
GO
ALTER TABLE [dbo].[materiales] CHECK CONSTRAINT [FK_MatCat]
GO
ALTER TABLE [dbo].[materiales]  WITH CHECK ADD  CONSTRAINT [FK_MatProov] FOREIGN KEY([Id_Proveedor])
REFERENCES [dbo].[proveedores] ([Id])
GO
ALTER TABLE [dbo].[materiales] CHECK CONSTRAINT [FK_MatProov]
GO
ALTER TABLE [dbo].[prestamo]  WITH CHECK ADD FOREIGN KEY([idlibro])
REFERENCES [dbo].[libro] ([id])
GO
ALTER TABLE [dbo].[prestamo]  WITH CHECK ADD FOREIGN KEY([iduser])
REFERENCES [dbo].[clientes] ([idCli])
GO
ALTER TABLE [dbo].[prestamo]  WITH CHECK ADD  CONSTRAINT [FK_idlibro_prestamo] FOREIGN KEY([idlibro])
REFERENCES [dbo].[libro] ([id])
GO
ALTER TABLE [dbo].[prestamo] CHECK CONSTRAINT [FK_idlibro_prestamo]
GO
ALTER TABLE [dbo].[prestamo]  WITH CHECK ADD  CONSTRAINT [FK_iduser_prestamo] FOREIGN KEY([iduser])
REFERENCES [dbo].[clientes] ([idCli])
GO
ALTER TABLE [dbo].[prestamo] CHECK CONSTRAINT [FK_iduser_prestamo]
GO
ALTER TABLE [dbo].[rol_permiso]  WITH CHECK ADD  CONSTRAINT [FK_PermisoRol] FOREIGN KEY([Id_Permiso])
REFERENCES [dbo].[permisos] ([Id])
GO
ALTER TABLE [dbo].[rol_permiso] CHECK CONSTRAINT [FK_PermisoRol]
GO
ALTER TABLE [dbo].[rol_permiso]  WITH CHECK ADD  CONSTRAINT [FK_RolPermiso] FOREIGN KEY([Id_Rol])
REFERENCES [dbo].[roles] ([Id])
GO
ALTER TABLE [dbo].[rol_permiso] CHECK CONSTRAINT [FK_RolPermiso]
GO
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [FK_EmplUsuario] FOREIGN KEY([Id_Empl])
REFERENCES [dbo].[empleados] ([Id])
GO
ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [FK_EmplUsuario]
GO
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [FK_RolUsuario] FOREIGN KEY([Id_Rol])
REFERENCES [dbo].[roles] ([Id])
GO
ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [FK_RolUsuario]
GO
/****** Object:  StoredProcedure [dbo].[editarCliente]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[editarCliente] (
@idCli int,
@nombre varchar(50),
@email varchar(50),
@direccion varchar(50),
@telefono varchar(50),
@cedula varchar(50),
@fecha_nac varchar(50),
@estado int
)
AS
BEGIN
	update clientes SET nombre = @nombre, email = @email, direccion = @direccion, telefono = @telefono, cedula = @cedula, fecha_nac = @fecha_nac, estado = @estado
END	
GO
/****** Object:  StoredProcedure [dbo].[editarLibro]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[editarLibro](
@id int,
@titulo varchar(50),
@autor varchar(50),
@genero varchar(50),
@fechapublicacion varchar(50)
)
AS
BEGIN 
	UPDATE libro SET titulo = @titulo, autor = @autor, genero = @genero, fechapublicacion = @fechapublicacion 
	WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[editarPrestamo]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[editarPrestamo](
@id int,
@idlibro int,
@iduser int,
@fechainicio varchar(255),
@fechafin varchar(255)
)
AS
BEGIN
	UPDATE prestamo SET idlibro = @idlibro, iduser = @iduser, fechainicio = @fechainicio, fechafin = @fechafin
	WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[editCliente]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[editCliente] (
@idCli int,
@nombre varchar(50),
@email varchar(50),
@direccion varchar(50),
@telefono varchar(50),
@cedula varchar(50),
@fecha_nac varchar(50),
@estado int
)
AS
BEGIN
	update clientes SET 
	nombre = @nombre, email = @email, direccion = @direccion, telefono = @telefono, cedula = @cedula, fecha_nac = @fecha_nac, estado = @estado
	WHERE idCli = @idCli
END	
GO
/****** Object:  StoredProcedure [dbo].[eliminarCliente]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[eliminarCliente] (
@idCli int
)
AS 
BEGIN
	delete FROM clientes WHERE idCli = @idCli
END
GO
/****** Object:  StoredProcedure [dbo].[eliminarLibro]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[eliminarLibro](
@id int
)
AS
BEGIN
	DELETE FROM libro WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[eliminarPrestamo]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[eliminarPrestamo](@id int)
AS
BEGIN
	DELETE FROM prestamo WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[guardarCliente]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[guardarCliente](
@nombre varchar(50),
@email varchar(50),
@direccion varchar(50),
@telefono varchar(50),
@cedula varchar(50),
@fecha_nac varchar(50),
@estado int
)
AS 
BEGIN
	INSERT INTO clientes(nombre,email,direccion,telefono,cedula,fecha_nac,estado) VALUES(@nombre,@email,@direccion,@telefono,@cedula,@fecha_nac,@estado)
END;
GO
/****** Object:  StoredProcedure [dbo].[guardarLibro]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[guardarLibro](
@titulo varchar(50),
@autor varchar(50),
@genero varchar(50),
@fechapublicacion varchar(255)
)
AS
BEGIN
	INSERT INTO libro (titulo,autor,genero,fechapublicacion) 
	VALUES (@titulo,@autor,@genero,@fechapublicacion)
END
GO
/****** Object:  StoredProcedure [dbo].[guardarPrestamo]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[guardarPrestamo](
@idlibro int,
@iduser int,
@fechainicio varchar(255),
@fechafin varchar(255)
)
AS
BEGIN
	INSERT INTO prestamo(idlibro,iduser,fechainicio,fechafin) 
	VALUES (@idlibro,@iduser,@fechainicio,@fechafin)
END
GO
/****** Object:  StoredProcedure [dbo].[listarClientes]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[listarClientes]
AS
BEGIN
	SELECT * FROM clientes
END;
GO
/****** Object:  StoredProcedure [dbo].[listarLibros]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[listarLibros]
AS 
BEGIN 
	SELECT *FROM libro
END
GO
/****** Object:  StoredProcedure [dbo].[listarPrestamos]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[listarPrestamos]
AS
BEGIN
	SELECT *FROM prestamo
END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerCliente]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerCliente](
@idCli int
)
AS 
BEGIN
	SELECT * FROM clientes WHERE idCli = @idCli
END;
GO
/****** Object:  StoredProcedure [dbo].[obtenerLibro]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerLibro](
@id int
)
AS 
BEGIN
	SELECT *FROM libro WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[obtenerPrestamo]    Script Date: 8/09/2023 2:12:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[obtenerPrestamo](
@id int
)
AS
BEGIN
	SELECT *FROM prestamo WHERE id = @id
END
GO
USE [master]
GO
ALTER DATABASE [constru-tech] SET  READ_WRITE 
GO
