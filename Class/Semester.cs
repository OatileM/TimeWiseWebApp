using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TimeManagementApp.Class;

namespace TimeManagementApp.Class
{
    //This class collects all information about the current semester 
    [Table("Semesters")]
    public class Semester
    {
        [Key]
        public int SemesterId { get; set; }
        [ForeignKey("Student")]
        public int StudentId { get; set; } // Foreign key linking to the User class
        public int Number { get; set; }
        public int Weeks { get; set; }
        public DateTime StartDate { get; set; } 
        public List <Module> Modules = new List<Module>(); //This List shall store the Modules that the user is currently enrolled in.
        public Student Student { get; set; } // Navigation property to link to the Student


        public Semester(int number, int weeks, DateTime startDate )
        {
            this.Number = number;
            this.Weeks = weeks;
            this.StartDate = startDate;
        }

    }
}
