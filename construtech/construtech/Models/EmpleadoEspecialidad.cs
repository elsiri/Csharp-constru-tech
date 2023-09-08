using System;
using System.Collections.Generic;

namespace construtech.Models;

public partial class EmpleadoEspecialidad
{
    public int Id { get; set; }

    public int? IdEmpl { get; set; }

    public int? IdEsp { get; set; }

    public virtual Empleado? IdEmplNavigation { get; set; }

    public virtual Especialidade? IdEspNavigation { get; set; }
}
