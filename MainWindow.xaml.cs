using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using TimeManagementApp.Class;
using BCrypt.Net;
using Microsoft.EntityFrameworkCore;


namespace TimeManagementApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        //This method creates a new list of Students
        List<Student> students = new List<Student>();

        public MainWindow()
        {
            InitializeComponent();
        }

        private async void btnRegister_Click(object sender, RoutedEventArgs e)
        {
            int yearOfStudy = 0;
            int _semesters = 0;
            int modules = 0;

            if (string.IsNullOrEmpty(txtbStudentNumber.Text) || string.IsNullOrEmpty(txtbStudentName.Text)
                || !int.TryParse(txtbStudentYear.Text, out yearOfStudy) || !int.TryParse(txtbStudentSemesters.Text, out _semesters)
                || !int.TryParse(txtbStudentModules.Text, out modules))
            {
                MessageBox.Show("Please complete all required fields to add a student", "Validation Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                try
                {
                    // Create a new Student object
                    Student student = new Student
                    {
                        StudentNumber = txtbStudentNumber.Text,
                        Name = txtbStudentName.Text,
                        Year = yearOfStudy,
                        NumOfSemesters = _semesters,
                        NumOfModules = modules
                    };

                    // Get the username and password from the textboxes
                    string username = txtbUsername.Text;
                    string password = txtbPassword.Text;

                    if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password))
                    {
                        MessageBox.Show("Please enter a username and password.", "Validation Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }

                    // Hash the password
                    string hashedPassword = BCrypt.Net.BCrypt.HashPassword(password);

                    // Set the username and hashed password in the Student object
                    student.Username = username;
                    student.PasswordHash = hashedPassword;

                    using (var context = new StudentDB())
                    {
                        // Check if the username is already in use asynchronously
                        bool isUsernameInUse = await context.Students.AnyAsync(s => s.Username == username);

                        if (isUsernameInUse)
                        {
                            MessageBox.Show("Username is already in use. Please choose another username.", "Validation Error", MessageBoxButton.OK, MessageBoxImage.Error);
                            return;
                        }

                        // Add the new user to the Students table
                        context.Students.Add(student);
                        await context.SaveChangesAsync();
                    }

                    MessageBox.Show("Student details have been successfully added!", "Success", MessageBoxButton.OK, MessageBoxImage.Exclamation);

                    // Clear all the textboxes
                    txtbStudentNumber.Clear();
                    txtbStudentName.Clear();
                    txtbStudentYear.Clear();
                    txtbStudentSemesters.Clear();
                    txtbStudentModules.Clear();
                    txtbUsername.Clear();
                    txtbPassword.Clear();

                    Login login = new Login();
                    login.Show();
                    this.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"An error occurred while adding the student: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }


    }

}
