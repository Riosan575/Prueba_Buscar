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

        public HomeController(IHome home)
        {
            this.home = home;
        }

        public IActionResult Index(string query)
        {          
            return View(home.GetAll(query));
        }
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
