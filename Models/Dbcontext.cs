using Microsoft.EntityFrameworkCore;
using System.Linq;
using System.IO;
using Microsoft.Extensions.Configuration;
using System;
namespace API.Models
{
    public class MyDbContext : DbContext
    {
        public DbSet<User> users { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            // appsettings.json의 ConnectionStrings의 MyDbContext의 password를 입력받은 password로 바꾼다.
            var config = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("/home/ubuntu/back-end/appsettings.json", optional: false, reloadOnChange: true)
                .Build();
            Console.WriteLine(config.GetConnectionString("MyDbContext"));
            optionsBuilder.UseMySql(config.GetConnectionString("MyDbContext"));
        }
    }
}

