using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Prueba.Models
{
    public class Comment
    {
        public int Id { get; set; }        
        public int IdNote { get; set; }
        [Required(ErrorMessage = "El campo usuario es requerido.")]
        public string Comments { get; set; }
        public DateTime Date { get; set; }
    }
}
