namespace Invoice.Data_Models
{
    public static class PaymentMethod
    {
        public const string Cash = "Cash";
        public const string BankCard = "BankCard";
        public const string Bkash = "Bkash";
        public const string Nogod = "Nogod";
        public const string Rocket = "Rocket";
    }
    public class Customer
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public string Phone { get; set; }
        public string? Address { get; set; }

        public Guid CreateBy { get; set; }
        public DateTime CreateAt { get; set; }
        
    }

    public class Invoice
    {
        public int Id { get; set; }
        public string Invoice_ID { get; set; }
        public int Customer_Id { get; set; }
        public Guid PrintedBy { get; set; }
        public DateTime Date { get; set; }
        public double ManualDiscount { get; set; }
        public double grandTotal { get; set; }
        public string PaymentMethod { get; set; }
        public double Due { get; set; }
        public double Paid { get; set; }
        public Guid CreateBy { get; set; }
        public DateTime CreateAt { get; set; }
        
    }

    public class Invoice_Item
    {
        public int Id { get; set; }
        public int Customer_Id { get; set; }
        public string Invoice_ID { get; set; }
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
