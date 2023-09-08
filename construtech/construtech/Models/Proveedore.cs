using System;
using System.Collections.Generic;

namespace construtech.Models;

public partial class Proveedore
{
    public int Id { get; set; }

    public string? Nombres { get; set; }

    public string? Direccion { get; set; }

    public string? Estado { get; set; }

    public string? Email { get; set; }

    public string? Telefono { get; set; }

    public string? NombreContacto { get; set; }

    public string? TelefonoContacto { get; set; }

    public string? EmailContacto { get; set; }

    public virtual ICollection<Materiale> Materiales { get; set; } = new List<Materiale>();
}
