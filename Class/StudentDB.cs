using Microsoft.EntityFrameworkCore;
using System;
using TimeManagementApp.Class;

public class StudentDB : DbContext
{
    public DbSet<Student> Students { get; set; }
    public DbSet<Module> Modules { get; set; }
    public DbSet<Semester> Semesters { get; set; }
    public DbSet<HoursRecord> HoursRecords { get; set; }

    public StudentDB()
    {
    }

    public StudentDB(DbContextOptions<StudentDB> options)
        : base(options)
    {
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Student>()
            .HasIndex(u => u.Username)
            .IsUnique();

        // Defines the relationship between Student and Module
        modelBuilder.Entity<Student>()
            .HasMany(s => s.modules)
            .WithOne(m => m.Student)
            .HasForeignKey(m => m.StudentId)
            .OnDelete(DeleteBehavior.Restrict); // Set cascade delete to NO ACTION

        base.OnModelCreating(modelBuilder);
    }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        if (!optionsBuilder.IsConfigured)
        {
            optionsBuilder.UseSqlServer("Server=DESKTOP-0PCCG50;Database=TimeManagementApp;Integrated Security=True;TrustServerCertificate=True;Encrypt=False");
        }
    }
}
