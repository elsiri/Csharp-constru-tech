using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace construtech.Models;

public partial class Cliente
{
    public int IdCli { get; set; }
    [Required(ErrorMessage = "El nombre es requerido")]
    public string Nombre { get; set; } = null!;
    [Required(ErrorMessage = "El email es requerido")]
    public string Email { get; set; } = null!;
    [Required(ErrorMessage = "La direccion es requerida")]
    public string Direccion { get; set; } = null!;
    [Required(ErrorMessage = "El telefono es requerido")]
    public string Telefono { get; set; } = null!;
    [Required(ErrorMessage = "La cedula es requerida")]
    public string Cedula { get; set; } = null!;
    [Required(ErrorMessage = "La fecha de nacimiento es requerida")]
    public string FechaNac { get; set; } = null!;
    [Required(ErrorMessage = "El estado es requerido")]
    public int? Estado { get; set; }

    public virtual ICollection<Prestamo> Prestamos { get; set; } = new List<Prestamo>();
}
