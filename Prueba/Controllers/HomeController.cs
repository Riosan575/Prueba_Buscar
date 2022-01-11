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

        public IActionResult Index()
        {          
            return View();
        }
        public IActionResult Privacy(string query)
        {
            return View(home.GetAll(query));
        }
    }
}
