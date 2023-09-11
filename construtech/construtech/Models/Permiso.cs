using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace construtech.Models;

public partial class Permiso
{
    public int Id { get; set; }
    [Required(ErrorMessage = "El permiso es requerido")]
    public string? Permiso1 { get; set; }
    [Required(ErrorMessage = "El estado es requerido")]
    public string? Estado { get; set; }

    public virtual ICollection<RolPermiso> RolPermisos { get; set; } = new List<RolPermiso>();
}
