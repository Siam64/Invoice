using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace Invoice.Data;

public class InvoiceContext : IdentityDbContext<IdentityUser>
{
    public InvoiceContext(DbContextOptions<InvoiceContext> options)
        : base(options)
    {
    }

    protected override void OnModelCreating(ModelBuilder builder)
    {
        base.OnModelCreating(builder);
        // Customize the ASP.NET Identity model and override the defaults if needed.
        // For example, you can rename the ASP.NET Identity table names and more.
        // Add your customizations after calling base.OnModelCreating(builder);
    }
    public DbSet<Data_Models.Customer> Customer { get; set; } = default!;
    public DbSet<Data_Models.Invoice> Invoice { get; set; } = default!;
    public DbSet<Data_Models.Invoice_Item> InvoiceItems { get; set; } = default!;
}
