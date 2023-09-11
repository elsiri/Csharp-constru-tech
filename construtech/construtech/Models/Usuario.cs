using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace construtech.Models;

public partial class Usuario
{
    public int Id { get; set; }
    [Required(ErrorMessage = "El nombre es requerido")]
    public string? Nombre { get; set; }
    [Required(ErrorMessage = "El apellido es requerido")]
    public string? Apellido { get; set; }
    [Required(ErrorMessage = "La cedula es requerida")]
    public int? Cedula { get; set; }
    [Required(ErrorMessage = "La clave es requerida")]
    public string? Clave { get; set; }
    [Required(ErrorMessage = "El Rol es requerido")]
    public int? IdRol { get; set; }
    [Required(ErrorMessage = "El Empleado es requerido")]
    public int? IdEmpl { get; set; }

    public virtual Empleado? IdEmplNavigation { get; set; }

    public virtual Role? IdRolNavigation { get; set; }
}
