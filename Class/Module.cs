using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TimeManagementApp.Class
{
    //This class stores each module the user enters
    [Table("Modules")]
    public class Module
    {
        [Key]
        public int ModuleId { get; set; }
        [ForeignKey("Student")]
        public int StudentId { get; set; }
        public string Code { get; set; }
        public string Name { get; set; }
        public int Credits { get; set; }
        public int ClassHours { get; set; }
        public double SelfStudyHours { get; set; }
        public List<HoursRecord> HoursRecords { get; set; } = new List<HoursRecord>();
        public double RemainingHours { get; set; }
        public bool IsSelected { get; set; }

        public Student Student { get; set; } // Navigation property to link to the Student

        //Constructor
        public Module (string code, string name, int credits, int classHours)
        { 
            this.Code = code;
            this.Name = name;
            this.Credits = credits;
            this.ClassHours = classHours;
        }
    }
}
