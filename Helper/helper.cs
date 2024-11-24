namespace Invoice.Helper
{
    public class helper
    {
    }

    public static class PopupMessage
    {
        public const string success = "Well done";
        public const string error = "failed";
        public const string notValid = "User already exist with this number";
    }

    public static class CompanyAddress
    {
        public const string Address = "Eastern Housing, Uttara Sector 4, Dhaka";
        public const string Phone = "0156565654";
        public const string Email = "firotechbd@firotech.com";
    }

   
    public static class DiscountType
    {
        public const string Percent = "%";
        public const string Ammount = "৳";
        

    }

    public static class GuidHelper
    {
        public static Guid ToGuidOrDefault(string guidString)
        {
            return !string.IsNullOrEmpty(guidString) && Guid.TryParse(guidString, out Guid guid)
                ? guid
                : Guid.Empty;
        }
    }
}
