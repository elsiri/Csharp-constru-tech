using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace construtech.Models;

public partial class ConstruTechContext : DbContext
{
    public ConstruTechContext()
    {
    }

    public ConstruTechContext(DbContextOptions<ConstruTechContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Categoria> Categorias { get; set; }

    public virtual DbSet<Cliente> Clientes { get; set; }

    public virtual DbSet<Empleado> Empleados { get; set; }

    public virtual DbSet<EmpleadoEspecialidad> EmpleadoEspecialidads { get; set; }

    public virtual DbSet<Especialidade> Especialidades { get; set; }

    public virtual DbSet<Libro> Libros { get; set; }

    public virtual DbSet<Materiale> Materiales { get; set; }

    public virtual DbSet<Permiso> Permisos { get; set; }

    public virtual DbSet<Prestamo> Prestamos { get; set; }

    public virtual DbSet<Proveedore> Proveedores { get; set; }

    public virtual DbSet<RolPermiso> RolPermisos { get; set; }

    public virtual DbSet<Role> Roles { get; set; }

    public virtual DbSet<Usuario> Usuarios { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=localhost;Initial Catalog=constru-tech;integrated security=True; TrustServerCertificate=True");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Categoria>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__categori__3214EC0713B5C36E");

            entity.ToTable("categorias");

            entity.Property(e => e.Estado)
                .HasMaxLength(20)
                .IsUnicode(false);
            entity.Property(e => e.Nombre)
                .HasMaxLength(100)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Cliente>(entity =>
        {
            entity.HasKey(e => e.IdCli).HasName("PK__clientes__398F6705970FD937");

            entity.ToTable("clientes");

            entity.Property(e => e.IdCli).HasColumnName("idCli");
            entity.Property(e => e.Cedula)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("cedula");
            entity.Property(e => e.Direccion)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("direccion");
            entity.Property(e => e.Email)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("email");
            entity.Property(e => e.Estado).HasColumnName("estado");
            entity.Property(e => e.FechaNac)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("fecha_nac");
            entity.Property(e => e.Nombre)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("nombre");
            entity.Property(e => e.Telefono)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("telefono");
        });

        modelBuilder.Entity<Empleado>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__empleado__3214EC0763E88882");

            entity.ToTable("empleados");

            entity.Property(e => e.Cedula)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.Direccion)
                .HasMaxLength(200)
                .IsUnicode(false);
            entity.Property(e => e.Email)
                .HasMaxLength(200)
                .IsUnicode(false);
            entity.Property(e => e.Estado)
                .HasMaxLength(20)
                .IsUnicode(false);
            entity.Property(e => e.Nombre)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.Telefono)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<EmpleadoEspecialidad>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__empleado__3214EC0719B05944");

            entity.ToTable("empleado_especialidad");

            entity.Property(e => e.IdEmpl).HasColumnName("Id_Empl");
            entity.Property(e => e.IdEsp).HasColumnName("Id_Esp");

            entity.HasOne(d => d.IdEmplNavigation).WithMany(p => p.EmpleadoEspecialidads)
                .HasForeignKey(d => d.IdEmpl)
                .HasConstraintName("FK_EmplEsp");

            entity.HasOne(d => d.IdEspNavigation).WithMany(p => p.EmpleadoEspecialidads)
                .HasForeignKey(d => d.IdEsp)
                .HasConstraintName("FK_EspEmpl");
        });

        modelBuilder.Entity<Especialidade>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__especial__3214EC07AF2F93ED");

            entity.ToTable("especialidades");

            entity.Property(e => e.Especialidad)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.Estado)
                .HasMaxLength(20)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Libro>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__libro__3213E83F9DE40B42");

            entity.ToTable("libro");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Autor)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("autor");
            entity.Property(e => e.Fechapublicacion)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("fechapublicacion");
            entity.Property(e => e.Genero)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("genero");
            entity.Property(e => e.Titulo)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("titulo");
        });

        modelBuilder.Entity<Materiale>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__material__3214EC07B64D888B");

            entity.ToTable("materiales");

            entity.Property(e => e.Estado)
                .HasMaxLength(20)
                .IsUnicode(false);
            entity.Property(e => e.IdCat).HasColumnName("Id_Cat");
            entity.Property(e => e.IdProveedor).HasColumnName("Id_Proveedor");
            entity.Property(e => e.Nombre)
                .HasMaxLength(100)
                .IsUnicode(false);

            entity.HasOne(d => d.IdCatNavigation).WithMany(p => p.Materiales)
                .HasForeignKey(d => d.IdCat)
                .HasConstraintName("FK_MatCat");

            entity.HasOne(d => d.IdProveedorNavigation).WithMany(p => p.Materiales)
                .HasForeignKey(d => d.IdProveedor)
                .HasConstraintName("FK_MatProov");
        });

        modelBuilder.Entity<Permiso>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__permisos__3214EC07FF63F2C2");

            entity.ToTable("permisos");

            entity.Property(e => e.Estado)
                .HasMaxLength(20)
                .IsUnicode(false);
            entity.Property(e => e.Permiso1)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Permiso");
        });

        modelBuilder.Entity<Prestamo>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__prestamo__3213E83FA88B6601");

            entity.ToTable("prestamo");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Fechafin)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("fechafin");
            entity.Property(e => e.Fechainicio)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("fechainicio");
            entity.Property(e => e.Idlibro).HasColumnName("idlibro");
            entity.Property(e => e.Iduser).HasColumnName("iduser");

            entity.HasOne(d => d.IdlibroNavigation).WithMany(p => p.Prestamos)
                .HasForeignKey(d => d.Idlibro)
                .HasConstraintName("FK__prestamo__idlibr__5812160E");

            entity.HasOne(d => d.IduserNavigation).WithMany(p => p.Prestamos)
                .HasForeignKey(d => d.Iduser)
                .HasConstraintName("FK__prestamo__iduser__4CA06362");
        });

        modelBuilder.Entity<Proveedore>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__proveedo__3214EC07C5B73390");

            entity.ToTable("proveedores");

            entity.Property(e => e.Direccion)
                .HasMaxLength(200)
                .IsUnicode(false);
            entity.Property(e => e.Email)
                .HasMaxLength(200)
                .IsUnicode(false);
            entity.Property(e => e.EmailContacto)
                .HasMaxLength(200)
                .IsUnicode(false)
                .HasColumnName("Email_Contacto");
            entity.Property(e => e.Estado)
                .HasMaxLength(20)
                .IsUnicode(false);
            entity.Property(e => e.NombreContacto)
                .HasMaxLength(200)
                .IsUnicode(false)
                .HasColumnName("Nombre_Contacto");
            entity.Property(e => e.Nombres)
                .HasMaxLength(200)
                .IsUnicode(false);
            entity.Property(e => e.Telefono)
                .HasMaxLength(20)
                .IsUnicode(false);
            entity.Property(e => e.TelefonoContacto)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("Telefono_Contacto");
        });

        modelBuilder.Entity<RolPermiso>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__rol_perm__3214EC076268A484");

            entity.ToTable("rol_permiso");

            entity.Property(e => e.IdPermiso).HasColumnName("Id_Permiso");
            entity.Property(e => e.IdRol).HasColumnName("Id_Rol");

            entity.HasOne(d => d.IdPermisoNavigation).WithMany(p => p.RolPermisos)
                .HasForeignKey(d => d.IdPermiso)
                .HasConstraintName("FK_PermisoRol");

            entity.HasOne(d => d.IdRolNavigation).WithMany(p => p.RolPermisos)
                .HasForeignKey(d => d.IdRol)
                .HasConstraintName("FK_RolPermiso");
        });

        modelBuilder.Entity<Role>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__roles__3214EC07A922203F");

            entity.ToTable("roles");

            entity.Property(e => e.Estado)
                .HasMaxLength(20)
                .IsUnicode(false);
            entity.Property(e => e.Nombre)
                .HasMaxLength(200)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Usuario>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__usuarios__3214EC07273197E5");

            entity.ToTable("usuarios");

            entity.Property(e => e.Apellido)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.Clave)
                .HasMaxLength(200)
                .IsUnicode(false);
            entity.Property(e => e.IdEmpl).HasColumnName("Id_Empl");
            entity.Property(e => e.IdRol).HasColumnName("Id_Rol");
            entity.Property(e => e.Nombre)
                .HasMaxLength(100)
                .IsUnicode(false);

            entity.HasOne(d => d.IdEmplNavigation).WithMany(p => p.Usuarios)
                .HasForeignKey(d => d.IdEmpl)
                .HasConstraintName("FK_EmplUsuario");

            entity.HasOne(d => d.IdRolNavigation).WithMany(p => p.Usuarios)
                .HasForeignKey(d => d.IdRol)
                .HasConstraintName("FK_RolUsuario");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
