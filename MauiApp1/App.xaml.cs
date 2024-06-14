using MauiApp1.Services;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Maui.Controls;

namespace MauiApp1
{
    public partial class App : Application
    {
        public App(IServiceProvider serviceProvider)
        {
            InitializeComponent();

            var httpClientService = serviceProvider.GetRequiredService<HttpClientService>();
            MainPage = new NavigationPage(new MainPage(httpClientService));
        }
    }
}
