using GraphQL.API.GraphqlCore;
using GraphQL.API.Infrastructure.DBContext;
using GraphQL.API.Infrastructure.Repositories;
using Moq;
using NUnit.Framework;
using System.Collections.Generic;

namespace GraphQlUnitTest
{
    [TestFixture]
    public class Tests
    {
        private IOfficeRepository _officeRepository;

        [Test]
        public void should_test_success()
        {
            List<Office> offices = new List<Office>();
            Office ofc=new Office
            {
                OfficeId = 1,
                OfficeName = "xyz",
                Email = "xyz@xyz.com",
                Latitude = 1,
                Longitude=1
            };
            offices.Add(ofc);
            var mockService = new Mock<IOfficeRepository>();
            mockService.Setup(p => p.GetOfficesAsync(It.IsAny<decimal>(), It.IsAny<decimal>())).ReturnsAsync(offices);
            _officeRepository = new OfficeRepository();
            var response = _officeRepository.GetOfficesAsync((decimal)51.043476, (decimal)3.709138);
            Assert.NotNull(response);
        }
    }
}