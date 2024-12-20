﻿namespace Invoice.View_Models
{
    public static class PaymentMethod
    {
        public const string Cash = "Cash";
        public const string Bank = "Bank";
        public const string Card = "Card";
        public const string Bkash = "Bkash";
        public const string Nogod = "Nogod";
        public const string Rocket = "Rocket";
    }
    public class InvoiceVM
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }


        public int CustomerId { get; set; }
        public string PrintedBy { get; set; }
        public DateTime Date { get; set; }


        public int Invoice_ID { get; set; }
        public string InvoiceID { get; set; }
        public string Description { get; set; }
        public int Qunatity { get; set; }
        public double grandTotal { get; set; }
        public double ManualDiscount { get; set; }
        public string PaymentMethod { get; set; }
        public double Total_Discount { get; set; }
        public double Due { get; set; }
        public double Paid { get; set; }
        public double Price { get; set; }
        public List<InvoiceItemVM> InvoiceItems { get; set; }

        public string HeaderImageBase64 { get; set; }
        public string FooterImageBase64 { get; set; }
        public string PaymentMethodImageBase64 { get; set; }

        public bool IsPrint { get; set; }
        public Guid CreateBy { get; set; }
        public DateTime CreateAt { get; set; }
    }


    public class InvoiceItemVM
    {
        public int Id { get; set; }
        public string? Description { get; set; }
        public int Quantity { get; set; }
        public double ItemDiscount { get; set; }
        public string discountType { get; set; }
        public double Price { get; set; }
        public double TotalPrice { get; set; }
        public Guid CreateBy { get; set; }
        public DateTime CreateAt { get; set; }
    }
}
