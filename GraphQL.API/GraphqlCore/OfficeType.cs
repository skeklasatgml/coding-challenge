using GraphQL.API.Infrastructure.DBContext;
using GraphQL.Types;

namespace GraphQL.API.GraphqlCore
{
    public class OfficeType : ObjectGraphType<Office>
    {
        public OfficeType()
        {
            Field(x => x.OfficeId);
            Field(x => x.City);
            Field(x => x.OfficeName);
            Field(x => x.Email);
            Field(x => x.Latitude);
            Field(x => x.Longitude);
        }
    }
}
