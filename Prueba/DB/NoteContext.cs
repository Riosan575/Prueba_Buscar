using Microsoft.EntityFrameworkCore;
using Prueba.DB.Mapping;
using Prueba.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Prueba.DB
{
    public class NoteContext: DbContext
    {
        public virtual DbSet<Note> Notes { get; set; }
        public NoteContext(DbContextOptions<NoteContext> options) : base(options) { }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.ApplyConfiguration(new NoteMap());
        }
    }
}
