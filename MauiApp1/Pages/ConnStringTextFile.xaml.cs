using System;
using System.Data;
using System.IO;
using System.Threading.Tasks;
using MauiApp1.Services;
using Microsoft.Maui.Controls;
using MySqlConnector;

namespace MauiApp1.Pages
{
    public partial class ConnStringTextFile : ContentPage
    {
        private string connectionString;
        private readonly HttpClientService _httpClientService;
        private readonly string fileName = "config.bgc";

        public ConnStringTextFile(HttpClientService httpClientService)
        {
            InitializeComponent();
            _httpClientService = httpClientService;
        }

        private async void OnLoadAndValidateConnectionStringClicked(object sender, EventArgs e)
        {
                    StatusLabel.Text = "Loading connection string...";
                    string downloadPath = string.Empty;
        #if ANDROID
                    var status = await Permissions.CheckStatusAsync<Permissions.StorageRead>();
                    if (status != PermissionStatus.Granted)
                    {
                    status = await Permissions.RequestAsync<Permissions.StorageRead>();
                    }
                    if (status != PermissionStatus.Granted)
                    {
                        StatusLabel.Text = "Storage permission is required to read the file.";
                        return;
                    }

                    downloadPath = Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryDownloads).AbsolutePath;
        #elif IOS
                    // iOS specific path to the documents directory
                    downloadPath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
        #elif MACCATALYST
                    // macOS specific path to the downloads directory
                    downloadPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), "Downloads");
        #elif WINDOWS
                    // Fallback for Windows
                    downloadPath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
        #else
                                // Fallback for other platforms
                                downloadPath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
        #endif
            string filePath = Path.Combine(downloadPath, fileName);

            if (File.Exists(filePath))
            {
                try
                {
                    connectionString = await File.ReadAllTextAsync(filePath);
                    ConnectionStringLabel.Text = $"Connection String: {connectionString}";
                    StatusLabel.Text = "File loaded successfully. Validating...";

                    // Validate the connection string
                    var validationResult = await Task.Run(() => ValidateConnectionString(connectionString));

                    if (validationResult.StartsWith("Upload success"))
                    {
                        var apiResult = await _httpClientService.SetConnectionStringAsync(connectionString);
                        if (apiResult)
                        {
                            StatusLabel.Text = "Connection string validated and sent to API successfully.";
                        }
                        else
                        {
                            StatusLabel.Text = "Validation successful, but failed to send connection string to API.";
                        }
                    }
                    else
                    {
                        StatusLabel.Text = validationResult;
                    }
                }
                catch (Exception ex)
                {
                    StatusLabel.Text = $"Error reading file: {ex.Message}";
                }
            }
            else
            {
                StatusLabel.Text = $"File not found: {filePath}";
            }
        }

        private string ValidateConnectionString(string connStr)
        {
            try
            {
                // Add Connection Timeout to the connection string if not already present
                if (!connStr.Contains("Connection Timeout", StringComparison.OrdinalIgnoreCase))
                {
                    connStr += ";Connection Timeout=30;";
                }

                using (var connection = new MySqlConnection(connStr))
                {
                    connection.Open();
                    if (connection.State == ConnectionState.Open)
                    {
                        return "Upload success. Connected to the database.";
                    }
                    else
                    {
                        return "Failed to connect to the database.";
                    }
                }
            }
            catch (MySqlException ex)
            {
                return $"MySQL error: {ex.Message}";
            }
            catch (Exception ex)
            {
                return $"Error: {ex.Message}";
            }
        }
    }
}
