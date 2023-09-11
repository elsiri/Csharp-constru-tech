using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace construtech.Models;

public partial class Categoria
{
    public int Id { get; set; }
    [Required(ErrorMessage ="El nombre es requerido")]
    public string? Nombre { get; set; }
    [Required(ErrorMessage = "El estado es requerido")]
    public string? Estado { get; set; }

    public virtual ICollection<Materiale> Materiales { get; set; } = new List<Materiale>();
}
