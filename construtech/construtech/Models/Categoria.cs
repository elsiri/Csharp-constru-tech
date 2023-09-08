using System;
using System.Collections.Generic;

namespace construtech.Models;

public partial class Categoria
{
    public int Id { get; set; }

    public string? Nombre { get; set; }

    public string? Estado { get; set; }

    public virtual ICollection<Materiale> Materiales { get; set; } = new List<Materiale>();
}
