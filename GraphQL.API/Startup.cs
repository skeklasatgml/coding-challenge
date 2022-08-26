using GraphiQl;
using GraphQL.API.GraphqlCore;
using GraphQL.API.Infrastructure.DBContext;
using GraphQL.API.Infrastructure.Repositories;
using GraphQL.Server.Ui.Playground;
using GraphQL.Types;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace GraphQL.API
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }
        public IConfiguration Configuration { get; }
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddMvc(options => options.EnableEndpointRouting = false).SetCompatibilityVersion(CompatibilityVersion.Version_3_0);
            services.AddDbContext<CodeChallengeDBContext>
                (options => options.UseSqlServer(Configuration.GetConnectionString("GraphQLDBConnection")));
            
            services.AddTransient<IOfficeRepository, OfficeRepository>();
            services.AddSingleton<IDocumentExecuter, DocumentExecuter>();
            services.AddSingleton<OfficeType>();
            services.AddSingleton<OfficeQuery>();

            var sp = services.BuildServiceProvider();
            services.AddSingleton<ISchema>(new OfficeSchema(new FuncDependencyResolver(type => sp.GetService(type))));
        }
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseHsts();
            }
            app.UseGraphiQl("/graphql");
            app.UseHttpsRedirection();
            app.UseMvc();
        }
    }
}
