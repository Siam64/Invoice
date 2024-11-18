using Invoice.Data;
using Invoice.Helper;
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
        //
        [Route("Create")]
        public IActionResult Index()
        {
            return View();
        }



        
        [HttpPost]
        [Route("Create")]
        public IActionResult Index( InvoiceVM model)
        {
            if (model == null)
                return Json(new { success = false, message = PopupMessage.error });
            //cheack Invoice_ID is valid or not

            //current login-user-guid id need to store to DB
            try
            {

                return Json(new { success = true, message = PopupMessage.success });
            }
            catch (Exception ex)
            {
                return Json(new { success = false, message = PopupMessage.error });
            }
        }
        
    }
}
