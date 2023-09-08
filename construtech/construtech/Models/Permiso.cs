using System;
using System.Collections.Generic;

namespace construtech.Models;

public partial class Permiso
{
    public int Id { get; set; }

    public string? Permiso1 { get; set; }

    public string? Estado { get; set; }

    public virtual ICollection<RolPermiso> RolPermisos { get; set; } = new List<RolPermiso>();
}
