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
    /// Interaction logic for Home.xaml
    /// </summary>
    public partial class Home : Window
    {
        // List to store student information
        private List<Student> students = new List<Student>();
        public Home(Student student)
        {
            InitializeComponent();
            // Add the provided student to the students list
            students.Add(student);

            // Populate the ListBoxes with student data
            PopulateListBoxes(); 
        }


        // Method to populate ListBoxes with student data
        private void PopulateListBoxes()
        {
            // Set the DisplayMemberPath property for each ListBox to the relevant property
            lbStudentName.DisplayMemberPath = "Name";
            lbStudentNumber.DisplayMemberPath = "StudentNumber";
            lbYearOfStudy.DisplayMemberPath = "Year";
            lbModules.DisplayMemberPath = "NumOfModules";
            lbSemester.DisplayMemberPath = "NumOfSemesters";

            // Set the ItemsSource for each ListBox to the students list
            lbStudentName.ItemsSource = students;
            lbStudentNumber.ItemsSource = students;
            lbYearOfStudy.ItemsSource = students;
            lbModules.ItemsSource = students;
            lbSemester.ItemsSource = students;
        }


        // Event handler for ListBox selection change
        private void lbStudentName_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            // Get the selected student
            Student selectedStudent = lbStudentName.SelectedItem as Student;

            if (selectedStudent != null)
            {
                // Pass the selected student to the Semester window
                AddSemester asm = new AddSemester(selectedStudent);
                asm.Show();
            }
        }


        //This method will show a message box when the window open
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Click on the student name to view their information.", "Select Recipe", MessageBoxButton.OK, MessageBoxImage.Information);
        }
    }
}
