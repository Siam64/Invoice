namespace Invoice.Data_Models
{
    public class Customer
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }

        public Guid CreateBy { get; set; }
        public DateTime CreateAt { get; set; }
        
    }

    public class Invoice
    {
        public int Id { get; set; }
        public int Customer_Id { get; set; }
        public Guid PrintedBy { get; set; }
        public DateTime Date { get; set; }
        public double ManualDiscount { get; set; }
        public Guid CreateBy { get; set; }
        public DateTime CreateAt { get; set; }
        
    }

    public class Invoice_Item
    {
        public int Id { get; set; }
        public int Invoice_ID { get; set; }
        public string? Description { get; set; }
        public int Quantity { get; set; }
        public double ItemDiscount { get; set; }
        public double Price { get; set; }

        public Guid CreateBy { get; set; }
        public DateTime CreateAt { get; set; }
    }

}
