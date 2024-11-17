using Microsoft.AspNetCore.Mvc;

namespace Invoice.Controllers
{
    public class InvoiceController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
