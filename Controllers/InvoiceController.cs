using Invoice.Data;
using Invoice.Data_Models;
using Invoice.Helper;
using Invoice.View_Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.CodeAnalysis.CSharp.Syntax;
using System.Data.Common;
using System.Net;
using System.Security.Claims;
using static System.Runtime.InteropServices.JavaScript.JSType;

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

        //git push


        [HttpGet]
        [Route("RefferenceAvailability")]
        public IActionResult RefferenceAvailability(string phone)
        {
            if (phone == null)
                return Json(new { success = false, message = PopupMessage.error });

            try
            {
                var refference = _context.Customer.Where(x => x.Phone.Contains(phone))
                    .Select(x => new
                    {
                        x.Id,
                        x.Name,
                        x.Phone,
                        x.Address
                    })
                    .Take(5)
                    .ToList();

                return Json(new { success = true, refference });
            }
            catch (Exception ex)
            {
                return Json(new { success = false, message = PopupMessage.error });
            }
        }


        //Invoice_Item method for mapping
        public IActionResult InsertInvoiceItem(List<InvoiceItemVM> model, int InvoiceId, Guid UderId)
        {


            foreach (var item in model)
            {
                Invoice_Item InvoiceItems = new Invoice_Item();
                InvoiceItems.CreateAt = DateTime.UtcNow;
                InvoiceItems.CreateBy = UderId;
                InvoiceItems.Description = item.Description;
                InvoiceItems.Price = item.Price;
                InvoiceItems.Quantity = item.Quantity;
                InvoiceItems.ItemDiscount = item.ItemDiscount;
                InvoiceItems.Invoice_ID = InvoiceId;

                _context.InvoiceItems.Add(InvoiceItems);
                _context.SaveChanges();
            }

            return Ok();
        }


        //Customer Method for mapping
        public int InsertCustomer(int id, string Name, string phone, string address, Guid CrrUserGuid)
        {
            Customer data = new Customer();

            data.CreateBy = CrrUserGuid;
            data.CreateAt = DateTime.UtcNow;
            data.Name = Name;
            data.Phone = phone;
            data.Address = address;

            if (id <= 0)
            {
                _context.Customer.Add(data);
                _context.SaveChanges();
            }


            return (data.Id);
        }




        [HttpPost]
        [Route("Create")]
        public IActionResult Index(InvoiceVM model)
        {
            if (model == null)
                return Json(new { success = false, message = PopupMessage.error });
           
            try
            {
                //Getting userid
                var userid = User.FindFirstValue(ClaimTypes.NameIdentifier);
                Guid CrrUserGuid = GuidHelper.ToGuidOrDefault(userid);



                //Method calling for Customer table
                model.CustomerId = InsertCustomer(model.CustomerId, model.Name, model.Phone, model.Address, CrrUserGuid);



                //mapping for Invoice Table
                Data_Models.Invoice invoiceData = new Data_Models.Invoice();
                invoiceData.CreateBy = CrrUserGuid;
                invoiceData.PrintedBy = CrrUserGuid;
                invoiceData.CreateAt = DateTime.UtcNow;
                invoiceData.Customer_Id = model.CustomerId;
                invoiceData.ManualDiscount = model.ManualDiscount;
                invoiceData.Date= model.Date;

                if (invoiceData != null)
                {
                    bool isMatch = _context.Invoice.Any(x => x.Id == model.Invoice_ID);
                    if (isMatch)
                    {
                        return Json(new { success = false, message = PopupMessage.error });
                    }
                    _context.Invoice.Add(invoiceData);
                    _context.SaveChanges();
                }


                //Method calling for Invoice_Item Table
                InsertInvoiceItem(model.InvoiceItems, invoiceData.Id, CrrUserGuid);

                return Json(new { success = true, message = PopupMessage.success });
            }


            catch (Exception ex)
            {
                return Json(new { success = false, message = PopupMessage.error });
            }
        }
    }
}



