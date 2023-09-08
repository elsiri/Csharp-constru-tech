using System;
using System.Collections.Generic;

namespace construtech.Models;

public partial class Role
{
    public int Id { get; set; }

    public string? Nombre { get; set; }

    public string? Estado { get; set; }

    public virtual ICollection<RolPermiso> RolPermisos { get; set; } = new List<RolPermiso>();

    public virtual ICollection<Usuario> Usuarios { get; set; } = new List<Usuario>();
}
