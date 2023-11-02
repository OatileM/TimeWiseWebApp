using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TimeManagementApp.Class
{
    public class HoursRecord
    {
        [Key]
        public int Id { get; set; }
        [ForeignKey("Student")]
        public int StudentId { get; set; } // Foreign key linking to the User class
        public double HoursSpent { get; set; }
        public DateTime Date { get; set; }
    }
}
