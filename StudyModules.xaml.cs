using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using TimeManagementApp.Class;

namespace TimeManagementApp
{
    /// <summary>
    /// Interaction logic for StudyModules.xaml
    /// </summary>
    public partial class StudyModules : Window
    {
        private List<Module> selectedModules;
        private int currentStudentId; // Add a field to store the current student's ID


        public StudyModules(List<Module> modules, int numOfWeeks, List<Module> selectedModules, int currentStudentId)
        {
            InitializeComponent();
            this.selectedModules = selectedModules;
            this.currentStudentId = currentStudentId; // Initialize the current student's ID

            // In this example, you would retrieve the modules from the database using the Modules DbSet.
            using (var context = new StudentDB())
            {
                this.selectedModules = context.Modules.ToList();
            }

            // Calculate and set self-study hours for each module
            CalculateSelfStudyHours(this.selectedModules, numOfWeeks);

            // Bind the ListBox to the selected modules
            lbStudyModules.ItemsSource = this.selectedModules;

            // Populate the ListBox and ComboBox with modules
            PopulateListBox();
        }


        private void PopulateListBox()
        {
            // Filter modules based on the current student's ID
            List<Module> modulesForCurrentStudent = selectedModules
                .Where(module => module.StudentId == currentStudentId)
                .ToList();

            lbStudyModules.ItemsSource = modulesForCurrentStudent;
        }





        private void CalculateSelfStudyHours(List<Module> modules, int numberOfWeeks)
        {
            foreach (var module in modules)
            {
                // Calculate self-study hours using the provided formula
                double selfStudyHours = ((module.Credits * 10) / numberOfWeeks )- module.ClassHours;

                // Set the calculated self-study hours to the module
                module.SelfStudyHours = selfStudyHours;
            }
        }

        private void CalculateRemainingHours(Module selectedModule)
        {
            double totalRecordedHours = selectedModule.HoursRecords 
                .Where(record => IsDateInCurrentWeek(record.Date))
                .Sum(record => record.HoursSpent);

            selectedModule.RemainingHours = selectedModule.SelfStudyHours - totalRecordedHours;
        }

        // Function to check if a date is in the current week
        private bool IsDateInCurrentWeek(DateTime date)
        {
            DateTime startOfWeek = DateTime.Today.AddDays(-((int)DateTime.Today.DayOfWeek - (int)DayOfWeek.Monday));
            DateTime endOfWeek = startOfWeek.AddDays(6);

            return date >= startOfWeek && date <= endOfWeek;
        }

        private void PopulateRemainingHoursListBox()
        {
            // Create a list of modules with their remaining hours
            var modulesWithRemainingHours = selectedModules
                .Select(module => new { Name = module.Name, RemainingHours = module.RemainingHours })
                .ToList();

            // Set the ItemsSource for the ListBox to the list of modules with remaining hours
            lbHoursRemaining.ItemsSource = modulesWithRemainingHours;
        }


        private void RecordHours_Click(object sender, RoutedEventArgs e)
        {
            string selectedModuleName = cbModules.SelectedValue as string;
            string hoursStr = txtHours.Text;
            DateTime selectedDate = dpDate.SelectedDate ?? DateTime.Now; // Use the selected date or the current date

            if (string.IsNullOrEmpty(selectedModuleName) || string.IsNullOrEmpty(hoursStr) || !double.TryParse(hoursStr, out double hours))
            {
                // Handle invalid input or missing values
                MessageBox.Show("Please fill in all fields with valid data.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            // Find the selected module by name
            Module selectedModule = selectedModules.Find(module => module.Name == selectedModuleName);

            if (selectedModule != null)
            {
                // Create a record or log for hours spent on the module
                var hoursRecord = new HoursRecord
                {
                    HoursSpent = hours,
                    Date = selectedDate
                };

                // Add the hours record to the selected module's list
                selectedModule.HoursRecords.Add(hoursRecord);

                // Calculate remaining hours for the selected module
                CalculateRemainingHours(selectedModule);

                // Update the ListBox displaying remaining hours
                PopulateRemainingHoursListBox();

                // Save changes to the database
                using (var context = new StudentDB())
                {
                    context.Update(selectedModule);
                    context.SaveChanges();
                }

                // Clear the input fields
                cbModules.SelectedIndex = -1;
                txtHours.Text = "";
                dpDate.SelectedDate = null;

                // Provide feedback to the user (e.g., success message)
                MessageBox.Show($"Recorded {hours} hours for {selectedModuleName} on {selectedDate.ToShortDateString()}", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else
            {
                // Handle the case where the selected module is not found
                MessageBox.Show("Selected module not found.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }


    }
}
