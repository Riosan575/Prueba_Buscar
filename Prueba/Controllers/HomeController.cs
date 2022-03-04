using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Prueba.DB;
using Prueba.Models;
using Prueba.Repo;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace Prueba.Controllers
{
    public class HomeController : Controller
    {
        private readonly IHome home;
        private readonly NoteContext context;

        public HomeController(IHome home, NoteContext context)
        {
            this.home = home;
            this.context = context;
        }

        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Privacy(string query)
        {
            return View(home.GetAll(query));
        }
        [HttpGet]
        public IActionResult Comment(int id)
        {
            var note = home.SearchNote(id);
            ViewBag.comment = home.GetAllComment(id);
            ViewBag.reply = context.ReplyComments.ToList();
            return View(note);
        }
        [HttpPost]
        public IActionResult Comment(Comment comment, int idNote)
        {
            if (ModelState.IsValid)
            {
                comment.IdNote = idNote;
                comment.Date = DateTime.Now;
                context.Comments.Add(comment);
                context.SaveChanges();
                return RedirectToAction("Comment", new { Id = comment.IdNote });
            }
            return RedirectToAction("Comment", new { Id = comment.IdNote });
        }
        [HttpPost]
        public IActionResult ReplyComment(ReplyComment replyComment, Comment comment, int idComment)
        {
            replyComment.IdComment = idComment;
            replyComment.Date = DateTime.Now;
            context.ReplyComments.Add(replyComment);
            context.SaveChanges();
            return RedirectToAction("Comment", new { Id = comment.IdNote });
        }
    }
}
