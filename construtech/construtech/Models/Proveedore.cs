using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace construtech.Models;

public partial class Proveedore
{
    public int Id { get; set; }
    [Required(ErrorMessage = "Nombres es requerido")]
    public string? Nombres { get; set; }
    [Required(ErrorMessage = "La direccion es requerida")]
    public string? Direccion { get; set; }
    [Required(ErrorMessage = "El estado es requerido")]
    public string? Estado { get; set; }
    [Required(ErrorMessage = "El email es requerido")]
    public string? Email { get; set; }
    [Required(ErrorMessage = "El telefono es requerido")]
    public string? Telefono { get; set; }
    [Required(ErrorMessage = "El nombre del contacto es requerido")]
    public string? NombreContacto { get; set; }
    [Required(ErrorMessage = "El telefono del contacto es requerido")]
    public string? TelefonoContacto { get; set; }
    [Required(ErrorMessage = "El email del contacto es requerido")]
    public string? EmailContacto { get; set; }

    public virtual ICollection<Materiale> Materiales { get; set; } = new List<Materiale>();
}
