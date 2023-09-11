using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace construtech.Models;

public partial class Empleado
{
    public int Id { get; set; }
    [Required(ErrorMessage = "El nombre es requerido")]
    public string? Nombre { get; set; }
    [Required(ErrorMessage = "La direccion es requerida")]
    public string? Direccion { get; set; }
    [Required(ErrorMessage = "El estado es requerido")]
    public string? Estado { get; set; }
    [Required(ErrorMessage = "El email es requerido")]
    public string? Email { get; set; }
    [Required(ErrorMessage = "El telefono es requerido")]
    public string? Telefono { get; set; }
    [Required(ErrorMessage = "La cedula es requerida")]
    public string? Cedula { get; set; }

    public virtual ICollection<EmpleadoEspecialidad> EmpleadoEspecialidads { get; set; } = new List<EmpleadoEspecialidad>();

    public virtual ICollection<Usuario> Usuarios { get; set; } = new List<Usuario>();
}
