using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Prueba.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Prueba.DB.Mapping
{
    public class ReplyCommentMap : IEntityTypeConfiguration<ReplyComment>
    {
        public void Configure(EntityTypeBuilder<ReplyComment> builder)
        {
            builder.ToTable("ReplyComment");
            builder.HasKey(o => o.Id);
        }
    }
}
