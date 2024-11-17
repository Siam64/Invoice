using Invoice.Data;
using Invoice.View_Models;
using Microsoft.AspNetCore.Mvc;

namespace Invoice.Controllers
{
    public class InvoiceController : Controller
    {
        private readonly InvoiceContext _context;
        public InvoiceController(InvoiceContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }

        [Route("Create")]
        public IActionResult Index(InvoiceVM model)
        {
            return View();
        }
    }
}
