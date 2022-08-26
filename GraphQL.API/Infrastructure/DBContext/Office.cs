namespace GraphQL.API.Infrastructure.DBContext
{
    public partial class Office
    {
        public int OfficeId { get; set; }
        public string OfficeName { get; set; }
        public string City { get; set; }
        public string Email { get; set; }
        public decimal Latitude { get; set; }
        public decimal Longitude { get; set; }
    }
}
