using Microsoft.EntityFrameworkCore;
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

namespace TimeManagementApp
{
    /// <summary>
    /// Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        public Login()
        {
            InitializeComponent();
        }

        private async void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            string username = txtbUsername.Text;
            string password = txtbPassword.Text;

            if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password))
            {
                MessageBox.Show("Please enter both username and password.", "Validation Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            try
            {
                // Use async and await for asynchronous database access
                using (var context = new StudentDB())
                {
                    // Check if a user with the given username exists asynchronously
                    var user = await context.Students.FirstOrDefaultAsync(s => s.Username == username);

                    if (user != null)
                    {
                        // Verify the hashed password
                        if (BCrypt.Net.BCrypt.Verify(password, user.PasswordHash))
                        {
                            // Password is correct, log in the user
                            MessageBox.Show("Login successful!");
                            AddModules am = new AddModules(user);
                            am.Show();
                            this.Close();
                        }
                        else
                        {
                            MessageBox.Show("Invalid password. Please try again.", "Login Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        }
                    }
                    else
                    {
                        MessageBox.Show("User not found. Please check your username.", "Login Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions that might occur during database access
                MessageBox.Show($"An error occurred: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }


        private void btnRegister_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mw = new MainWindow();
            mw.Show();
            this.Close();
        }
    }
}
