using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace construtech.Models;

public partial class Empleado
{
    public int Id { get; set; }
    [Required(ErrorMessage = "El nombre es requerido")]
    public string? Nombre { get; set; }
    [Required(ErrorMessage = "La direccion es requerida")]
    public string? Direccion { get; set; }
    [Required(ErrorMessage = "El estado es requerido")]
    public string? Estado { get; set; }
    [Required(ErrorMessage = "El email es requerido")]
    [EmailAddress(ErrorMessage = "El email no es valido")]
    [Remote("VerificarCorreoUnico", "Empleadoes", ErrorMessage = "El email ya existe")]
    public string? Email { get; set; }
    [Required(ErrorMessage = "El telefono es requerido")]
    public string? Telefono { get; set; }
    [Required(ErrorMessage = "La cedula es requerida")]
    [Remote("VerificarCedulaUnica", "Empleadoes", ErrorMessage = "La cedula ingresada ya existe")]
    public string? Cedula { get; set; }

    public virtual ICollection<EmpleadoEspecialidad> EmpleadoEspecialidads { get; set; } = new List<EmpleadoEspecialidad>();

    public virtual ICollection<Usuario> Usuarios { get; set; } = new List<Usuario>();
}
