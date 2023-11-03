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
using Microsoft.EntityFrameworkCore;


namespace TimeManagementApp
{
    public partial class AddSemester : Window
    {
        private Student student;
        private List<Module> modules;
        public List<Module> SelectedModules { get; private set; } = new List<Module>();

        public AddSemester(Student student)
        {
            InitializeComponent();
            this.DataContext = this;  // Set the DataContext to the window itself
            this.student = student;
            modules = student.modules;

            // Explicitly load the modules for the student
            student.modules = GetModulesForStudent(student);  // Implement GetModulesForStudent accordingly
            PopulateListBox();
        }

        private void PopulateListBox()
        {
            lbModulesList.Items.Clear(); // Clear existing items

            foreach (Module module in student.modules)
            {
                CheckBox checkBox = new CheckBox
                {
                    Content = module.Name,
                    IsChecked = module.IsSelected // You can set this based on your data
                };

                // Attach a custom attribute or tag to the CheckBox if needed
                checkBox.Tag = module.ModuleId; // For example, storing the module ID

                lbModulesList.Items.Add(checkBox);
            }
        }




        private void btnFinish_Click(object sender, RoutedEventArgs e)
        {
            int currentSemester;
            int numOfWeeks;

            if (!int.TryParse(txtbCurrentSemester.Text, out currentSemester) ||
                !int.TryParse(txtbNumOfWeeks.Text, out numOfWeeks) ||
                dpStartDate.SelectedDate == null)
            {
                MessageBox.Show("Please complete all required fields to add a Semester.", "Validation Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            DateTime startDate = dpStartDate.SelectedDate.Value;

            Semester sm = new Semester(currentSemester, numOfWeeks, startDate);
            sm.Modules = new List<Module>();
            sm.StudentId = student.StudentId; // Set the foreign key

            foreach (Module module in modules)
            {
                if (lbModulesList.SelectedItems.Contains(module))
                {
                    sm.Modules.Add(module);
                }
            }

            // Link the semester to the student using the navigation property
            student.semesters.Add(sm);

            txtbCurrentSemester.Clear();
            txtbNumOfWeeks.Clear();
            dpStartDate.SelectedDate = null;

            // Store the information in the Semester Database
            using (var context = new StudentDB())
            {
                context.Semesters.Add(sm);
                context.SaveChanges();
                MessageBox.Show("Successfuly added a new Semester.", "Success", MessageBoxButton.OK, MessageBoxImage.Information);

            }

            StudyModules studyModulesWindow = new StudyModules(modules, numOfWeeks, SelectedModules, student.StudentId);
            studyModulesWindow.Show();
            this.Close();
        }


        private void lbModulesList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            SelectedModules.Clear();
            foreach (Module module in lbModulesList.SelectedItems)
            {
                SelectedModules.Add(module);
            }
        }
        private List<Module> GetModulesForStudent(Student student)
        {
            using (var context = new StudentDB())
            {
                // Assuming you want to load the modules for the specific student
                // Filter modules by StudentId
                var modules = context.Modules.Where(m => m.StudentId == student.StudentId).ToList();

                // Debugging: Output the count of retrieved modules to the console
                MessageBox.Show($"Retrieved {modules.Count} modules for student {student.StudentId}");

                return modules;
            }
        }



    }
}
