using GraphQL.API.Infrastructure.DBContext;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GraphQL.API.Infrastructure.Repositories
{
    /// <summary>
    /// TechEventRepository.
    /// </summary>
    public class OfficeRepository : IOfficeRepository
    {
        /// <summary>
        /// The _context.
        /// </summary>
        private readonly CodeChallengeDBContext _context;
        public OfficeRepository() { }
        public OfficeRepository(CodeChallengeDBContext context)
        {
            this._context = context;
        }
        public async Task<List<Office>> GetOfficesAsync(decimal latitude, decimal longitude)
        {
            var response = await (from ofc in this._context.Offices
                                  where GetDistanceBetweenLocations((double)latitude, (double)longitude, (double)ofc.Latitude, (double)ofc.Longitude) <= 20
                                  select ofc).ToListAsync();
            return response;
        }
        public double GetDistanceBetweenLocations(double lat1, double lon1, double lat2, double lon2)
        {
            var R = 6378137; // Earth’s mean radius in meter
            var d1 = lat1 * (Math.PI / 180.0);
            var num1 = lon1 * (Math.PI / 180.0);
            var d2 = lat2 * (Math.PI / 180.0);
            var num2 = lon2 * (Math.PI / 180.0) - num1;
            var d3 = Math.Pow(Math.Sin((d2 - d1) / 2.0), 2.0) +
                     Math.Cos(d1) * Math.Cos(d2) * Math.Pow(Math.Sin(num2 / 2.0), 2.0);
            return (R * (2.0 * Math.Atan2(Math.Sqrt(d3), Math.Sqrt(1.0 - d3))))*0.001;
        }
    }
}
