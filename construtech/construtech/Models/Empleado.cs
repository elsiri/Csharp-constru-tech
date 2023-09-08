using System;
using System.Collections.Generic;

namespace construtech.Models;

public partial class Empleado
{
    public int Id { get; set; }

    public string? Nombre { get; set; }

    public string? Direccion { get; set; }

    public string? Estado { get; set; }

    public string? Email { get; set; }

    public string? Telefono { get; set; }

    public string? Cedula { get; set; }

    public virtual ICollection<EmpleadoEspecialidad> EmpleadoEspecialidads { get; set; } = new List<EmpleadoEspecialidad>();

    public virtual ICollection<Usuario> Usuarios { get; set; } = new List<Usuario>();
}
