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
using System.Windows.Shapes;
using TimeManagementApp.Class;
namespace TimeManagementApp
{
    /// <summary>
    /// Interaction logic for AddModules.xaml
    /// </summary>
    public partial class AddModules : Window
    {
        private Student student; // Reference to the Student instance
        //This creats an list of the mdules object
        //List <Module> modules = new List <Module> ();
        public AddModules(Student student)
        {
            InitializeComponent();
            this.student = student; // Store the reference to the Student instance

        }

        private void btnAddStudent_Click(object sender, RoutedEventArgs e)
        {
            int credits = 0;
            int hours = 0;

            if (String.IsNullOrEmpty(txtbModuleCode.Text) || String.IsNullOrEmpty(txtbModuleName.Text)
                || Int32.TryParse(txtbCredits.Text, out credits) == false || Int32.TryParse(txtbClassHours.Text, out hours) == false)
            {
                MessageBox.Show("Please complete all required fields to add a Module", "All Fields not Completed", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                Module module = new Module(txtbModuleCode.Text, txtbModuleName.Text, credits, hours);
                module.StudentId = student.StudentId; // Set the foreign key

                // Save the module to the database
                using (var db = new StudentDB())
                {
                    db.Modules.Add(module);
                    db.SaveChanges();
                }

                // Display a success message
                MessageBox.Show($"Module has been successfully added!", "Success", MessageBoxButton.OK, MessageBoxImage.Exclamation);

                // Clear input fields
                txtbModuleCode.Clear();
                txtbModuleName.Clear();
                txtbCredits.Clear();
                txtbClassHours.Clear();
            }
        }


        private void btnFinish_Click(object sender, RoutedEventArgs e)
        {
            //This method will open the next window
            Home hm = new Home(student);
            hm.Show();


        }
    }
}
