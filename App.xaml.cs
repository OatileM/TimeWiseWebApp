using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace TimeManagementApp
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {

        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);

            // Configure your DbContext with SQL Server
            var options = new DbContextOptionsBuilder<StudentDB>()
                .UseSqlServer("Server=DESKTOP-0PCCG50;Database=TimeManagementApp;Integrated Security=True;TrustServerCertificate=True;Encrypt=False")
                .Options;

            using (var dbContext = new StudentDB(options))
            {
                // Ensure the database is created or migrated
                dbContext.Database.EnsureCreated();
            }
        }

    }
}
