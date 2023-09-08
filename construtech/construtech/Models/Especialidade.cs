using System;
using System.Collections.Generic;

namespace construtech.Models;

public partial class Especialidade
{
    public int Id { get; set; }

    public string? Especialidad { get; set; }

    public string? Estado { get; set; }

    public virtual ICollection<EmpleadoEspecialidad> EmpleadoEspecialidads { get; set; } = new List<EmpleadoEspecialidad>();
}
