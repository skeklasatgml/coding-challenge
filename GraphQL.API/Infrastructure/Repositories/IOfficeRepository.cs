using GraphQL.API.Infrastructure.DBContext;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace GraphQL.API.Infrastructure.Repositories
{
    public interface IOfficeRepository
    {
        Task<List<Office>> GetOfficesAsync(decimal latitude, decimal longitude);
    }
}
