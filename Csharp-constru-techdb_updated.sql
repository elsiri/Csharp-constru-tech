USE [constru-tech]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 14/09/2023 1:50:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 14/09/2023 1:50:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 14/09/2023 1:50:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 14/09/2023 1:50:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 14/09/2023 1:50:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 14/09/2023 1:50:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 14/09/2023 1:50:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 14/09/2023 1:50:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorias]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  Table [dbo].[clientes]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  Table [dbo].[empleado_especialidad]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  Table [dbo].[empleados]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  Table [dbo].[especialidades]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  Table [dbo].[libro]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  Table [dbo].[materiales]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  Table [dbo].[permisos]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  Table [dbo].[prestamo]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  Table [dbo].[proveedores]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  Table [dbo].[rol_permiso]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  Table [dbo].[roles]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  Table [dbo].[usuarios]    Script Date: 14/09/2023 1:50:03 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Apellido] [varchar](100) NULL,
	[Cedula] [varchar](50) NULL,
	[Clave] [varchar](200) NULL,
	[Id_Rol] [int] NULL,
	[Id_Empl] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
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
/****** Object:  StoredProcedure [dbo].[editarCliente]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  StoredProcedure [dbo].[editarLibro]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  StoredProcedure [dbo].[editarPrestamo]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  StoredProcedure [dbo].[editCliente]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  StoredProcedure [dbo].[eliminarCliente]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  StoredProcedure [dbo].[eliminarLibro]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  StoredProcedure [dbo].[eliminarPrestamo]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  StoredProcedure [dbo].[guardarCliente]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  StoredProcedure [dbo].[guardarLibro]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  StoredProcedure [dbo].[guardarPrestamo]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  StoredProcedure [dbo].[listarClientes]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  StoredProcedure [dbo].[listarLibros]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  StoredProcedure [dbo].[listarPrestamos]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  StoredProcedure [dbo].[ObtenerCliente]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  StoredProcedure [dbo].[obtenerLibro]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
/****** Object:  StoredProcedure [dbo].[obtenerPrestamo]    Script Date: 14/09/2023 1:50:03 a. m. ******/
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
