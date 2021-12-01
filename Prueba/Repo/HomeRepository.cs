using Prueba.DB;
using Prueba.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Prueba.Repo
{
    public interface IHome
    {
        List<Note> GetAll(string query);
    }
    public class HomeRepository : IHome
    {
        private readonly NoteContext context;

        public HomeRepository(NoteContext context)
        {
            this.context = context;
        }
        public List<Note> GetAll(string query)
        {
            if (!string.IsNullOrEmpty(query))
            {
                return context.Notes.Where(o => o.Titulo.Contains(query) || o.Contenido.Contains(query)).ToList();
            }

            return context.Notes.ToList();
        }
    }
}
