using Microsoft.EntityFrameworkCore;

namespace GraphQL.API.Infrastructure.DBContext
{
    public partial class CodeChallengeDBContext : DbContext
    {
        public CodeChallengeDBContext()
        {
        }
        public CodeChallengeDBContext(DbContextOptions<CodeChallengeDBContext> options)
            : base(options)
        {
        }
        public virtual DbSet<Office> Offices { get; set; }
        //protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        //{
        //    if (!optionsBuilder.IsConfigured)
        //    {
        //        optionsBuilder.UseSqlServer("Server=IN3295560W1;Database=codingChallenge;Trusted_Connection=True;");
        //    }
        //}
    }
}
