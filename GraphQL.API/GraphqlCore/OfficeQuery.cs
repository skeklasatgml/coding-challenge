using GraphQL.API.Infrastructure.Repositories;
using GraphQL.Types;

namespace GraphQL.API.GraphqlCore
{
    public class OfficeQuery : ObjectGraphType
    {
        OfficeQuery() { }
        public OfficeQuery(IOfficeRepository repository)
        {
            Name = "OfficeQuery";
            Field<ListGraphType<OfficeType>>(
               "office",
               arguments: new QueryArguments(new QueryArgument<DecimalGraphType> { Name = "latitude" }, new QueryArgument<DecimalGraphType> { Name = "longitude" }),
               resolve: context => repository.GetOfficesAsync(context.GetArgument<decimal>("latitude"), context.GetArgument<decimal>("longitude"))
            );
        }
    }
}
