using MauiApp1.Services;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;

namespace MauiApp1
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                });

            builder.Services.AddHttpClient<HttpClientService>(client =>
            {
                var baseAddress = DeviceInfo.Platform == DevicePlatform.Android
                    ? "http://10.0.2.2:7059/"
                    : "http://localhost:7059/";

                client.BaseAddress = new Uri(baseAddress);
                client.DefaultRequestHeaders.Add("Accept", "application/json");
                client.Timeout = TimeSpan.FromSeconds(30); // Increase timeout to 30 seconds
            })
  .ConfigurePrimaryHttpMessageHandler(() => new HttpClientHandler
  {
      ServerCertificateCustomValidationCallback = (message, cert, chain, errors) => true
  });


#if DEBUG
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}
