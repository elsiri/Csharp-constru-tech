using System;
using System.Collections.Generic;

namespace construtech.Models;

public partial class Materiale
{
    public int Id { get; set; }

    public string? Nombre { get; set; }

    public string? Estado { get; set; }

    public int? Precio { get; set; }

    public int? Cantidad { get; set; }

    public int? IdProveedor { get; set; }

    public int? IdCat { get; set; }

    public virtual Categoria? IdCatNavigation { get; set; }

    public virtual Proveedore? IdProveedorNavigation { get; set; }
}
