using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Prueba.Models
{
    public class ReplyComment
    {
        public int Id { get; set; }
        public int IdComment { get; set; }
        [Required(ErrorMessage = "El campo usuario es requerido.")]
        public string RespComment { get; set; }
        public DateTime Date { get; set; }
    }
}
