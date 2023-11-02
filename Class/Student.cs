using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using TimeManagementApp.Class;

namespace TimeManagementApp.Class
{
    // This class will store user/student information
    public class Student
    {
        [Key]
        public int StudentId { get; set; }
        public string Username { get; set; }

        public string PasswordHash { get; set; }
        public string StudentNumber { get; set; }
        public string? Name { get; set; }
        public int Year { get; set; }
        public int NumOfModules { get; set; }
        public int NumOfSemesters { get; set; }

        public List<Semester>? semesters; // List of the semester that the user is currently enrolled in.
        public List<Module>? modules = new List<Module>(); // List of modules that the student is currently taking.

        // Constructor
        public Student()
        {
            // Initialize lists to avoid null reference exceptions
            semesters = new List<Semester>();
            modules = new List<Module>();
        }
    }
}
