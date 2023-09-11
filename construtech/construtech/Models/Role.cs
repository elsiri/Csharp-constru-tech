using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace construtech.Models;

public partial class Role
{
    public int Id { get; set; }
    [Required(ErrorMessage = "El nombre es requerido")]
    public string? Nombre { get; set; }
    [Required(ErrorMessage = "El estado es requerido")]
    public string? Estado { get; set; }

    public virtual ICollection<RolPermiso> RolPermisos { get; set; } = new List<RolPermiso>();

    public virtual ICollection<Usuario> Usuarios { get; set; } = new List<Usuario>();
}
