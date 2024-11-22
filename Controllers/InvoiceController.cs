using Invoice.Data;
using Invoice.Data_Models;
using Invoice.Helper;
using Invoice.View_Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.CodeAnalysis.CSharp.Syntax;
using Newtonsoft.Json;
using System.Data.Common;
using System.Net;
using System.Security.Claims;
using static System.Runtime.InteropServices.JavaScript.JSType;
using Newtonsoft.Json;

namespace Invoice.Controllers
{
    [Authorize]
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
        [Route("GetPhoneSuggestions")]
        public IActionResult GetPhoneSuggestions(string phone)
        {
            if (string.IsNullOrEmpty(phone))
                return Json(new { success = false, message = PopupMessage.error });

            try
            {
                var references = _context.Customer
                    .Where(x => x.Phone.StartsWith(phone))
                    .Select(x => new
                    {
                        x.Id,
                        x.Name,
                        x.Phone,
                        x.Address
                    })
                    .Take(5)
                    .ToList();

                return Json(new { success = true, references });
            }
            catch (Exception ex)
            {
                return Json(new { success = false, message = PopupMessage.error });
            }
        }



        //Invoice_Item method for mapping
        public IActionResult InsertInvoiceItem(List<InvoiceItemVM> model, string InvoiceId, int customerId, Guid UderId)
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
                InvoiceItems.TotalPrice = item.TotalPrice;
                InvoiceItems.Invoice_ID = InvoiceId;
                InvoiceItems.Customer_Id = customerId;
                
               

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

           
                _context.Customer.Add(data);
                _context.SaveChanges();
            


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


                if(model.CustomerId <= 0)
                {
                    //Method calling for Customer table
                    model.CustomerId = InsertCustomer(model.CustomerId, model.Name, model.Phone, model.Address, CrrUserGuid);
                }
               



                //mapping for Invoice Table
                Data_Models.Invoice invoiceData = new Data_Models.Invoice();
                invoiceData.CreateBy = CrrUserGuid;
                invoiceData.PrintedBy = CrrUserGuid;
                invoiceData.CreateAt = DateTime.UtcNow;
                invoiceData.Customer_Id = model.CustomerId;
                invoiceData.ManualDiscount = model.ManualDiscount;
                invoiceData.Date= model.Date;
                invoiceData.Invoice_ID = model.InvoiceID;
                invoiceData.grandTotal = model.grandTotal;

                if (invoiceData != null)
                {
                    bool isMatch = _context.InvoiceItems.Any(x => x.Id.ToString() == model.InvoiceID);
                    if (isMatch)
                    {
                        return Json(new { success = false, message = PopupMessage.error });
                    }
                    _context.Invoice.Add(invoiceData);
                    _context.SaveChanges();
                }




                //Method calling for Invoice_Item Table
                InsertInvoiceItem(model.InvoiceItems, model.InvoiceID, model.CustomerId, CrrUserGuid);



                if (model.IsPrint)
                {
                    
                    HttpContext.Session.SetString("InvoiceModel", JsonConvert.SerializeObject(model));

                    
                    return Json(new { success = true, message = PopupMessage.success });
                }
                return Json(new { success = true, message = PopupMessage.success });


            }

            
            catch (Exception ex)
            {
                return Json(new { success = false, message = PopupMessage.error });
            }
        }



        public IActionResult InvoicePrint()
        {
            
            var invoiceModelJson = HttpContext.Session.GetString("InvoiceModel");

 
            InvoiceVM model = JsonConvert.DeserializeObject<InvoiceVM>(invoiceModelJson);


            return View(model);
        }
    }
}



