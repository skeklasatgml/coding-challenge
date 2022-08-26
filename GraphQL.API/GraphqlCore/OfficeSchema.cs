using GraphQL.Types;

namespace GraphQL.API.GraphqlCore
{
    public class OfficeSchema : Schema
    {
        public OfficeSchema(IDependencyResolver resolver)
        {
            Query = resolver.Resolve<OfficeQuery>();
            DependencyResolver = resolver;
        }
    }
}
