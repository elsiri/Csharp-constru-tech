using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace construtech.Models;

public partial class Especialidade
{
    public int Id { get; set; }
    [Required(ErrorMessage = "La especialidad es requerida")]
    public string? Especialidad { get; set; }
    [Required(ErrorMessage = "El estado es requerido")]
    public string? Estado { get; set; }

    public virtual ICollection<EmpleadoEspecialidad> EmpleadoEspecialidads { get; set; } = new List<EmpleadoEspecialidad>();
}
