using System;
using System.Collections.Generic;

namespace construtech.Models;

public partial class Usuario
{
    public int Id { get; set; }

    public string? Nombre { get; set; }

    public string? Apellido { get; set; }

    public int? Cedula { get; set; }

    public string? Clave { get; set; }

    public int? IdRol { get; set; }

    public int? IdEmpl { get; set; }

    public virtual Empleado? IdEmplNavigation { get; set; }

    public virtual Role? IdRolNavigation { get; set; }
}
