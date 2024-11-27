namespace Invoice.Helper
{
    public class helper
    {
    }

    public static class Payment
    {
        public const string Cash = "Cash";
        public const string Card = "Card";
        public const string Bank = "Bank";
        public const string Bkash = "Bkash";
        public const string Nogod = "Nagad";
        public const string Rocket = "Rocket";
    }
    public static class PopupMessage
    {
        public const string success = "Well done";
        public const string error = "failed";
        public const string notValid = "User already exist with this number";
    }

    public static class CompanyAddress
    {
        public const string Company = "FiroTech";
        public const string Address = "Uttara Eastern City, Uttara, Dhaka-1230";
        public const string Phone = "01730277343";
        public const string Email = "sales@firotechbd.com";
    }

   
    public static class DiscountType
    {
        public const string Percent = "%";
        public const string Ammount = "৳";
        public const string Currency = "Taka";
        public const string Only = "Only";

    }

    public static class NumberToWords
    {
        private static string[] ones = { "", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten",
                                     "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen" };
        private static string[] tens = { "", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety" };

        public static string ConvertToWords(double number)
        {
            // Handle negative numbers
            if (number < 0)
                return "Minus " + ConvertToWords(Math.Abs(number));

            // Round to two decimal places to handle floating-point imprecision
            number = Math.Round(number, 2);

            // Split into integer and decimal parts
            long intPart = (long)Math.Floor(number);
            int decimalPart = (int)Math.Round((number - intPart) * 100);

            string result = ConvertIntToWords(intPart);

            // Add paisa for decimal part if it exists
            if (decimalPart > 0)
            {
                result += " and " + ConvertIntToWords(decimalPart) + " Paisa";
            }

            return result.Trim();
        }

        private static string ConvertIntToWords(long number)
        {
            if (number == 0)
                return "Zero";

            if (number < 20)
                return ones[number];

            if (number < 100)
                return tens[number / 10] + ((number % 10 != 0) ? " " + ones[number % 10] : "");

            if (number < 1000)
                return ones[number / 100] + " Hundred" + ((number % 100 != 0) ? " and " + ConvertIntToWords(number % 100) : "");

            if (number < 100000)
                return ConvertIntToWords(number / 1000) + " Thousand" + ((number % 1000 != 0) ? " " + ConvertIntToWords(number % 1000) : "");

            if (number < 10000000)
                return ConvertIntToWords(number / 100000) + " Lakh" + ((number % 100000 != 0) ? " " + ConvertIntToWords(number % 100000) : "");

            return ConvertIntToWords(number / 10000000) + " Crore" + ((number % 10000000 != 0) ? " " + ConvertIntToWords(number % 10000000) : "");
        }
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
