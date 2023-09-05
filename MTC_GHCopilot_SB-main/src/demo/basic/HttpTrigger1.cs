using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;

namespace Company.Function
{
    //create a class to hold to a productID string, and orderID string and a quantity int
    public class Order
    {
        public string ProductID { get; set; }
        public string OrderID { get; set; }
        public int Quantity { get; set; }
        // convert request body into a string
        string requestBody = await new StreamReader(req.Body).ReadToEndAsync();
    }
   
    public static class HttpTrigger1
    {
        [FunctionName("HttpTrigger1")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Function, "get", "post", Route = null)] HttpRequest req,
            ILogger log)
        {
            log.LogInformation("C# HTTP trigger function processed a request.");

            return new OkObjectResult("response");
        }
    }
}