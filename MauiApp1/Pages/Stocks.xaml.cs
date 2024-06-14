using MauiApp1.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;

namespace MauiApp1.Pages
{
    public partial class Stocks : ContentPage
    {
        public Stocks()
        {
            InitializeComponent();
        }

        private async void ExecuteButton_Clicked(object sender, EventArgs e)
        {
            var param1 = Param1Entry.Text;
            var param2 = Param2Entry.Text;

            if (string.IsNullOrWhiteSpace(param1) || string.IsNullOrWhiteSpace(param2))
            {
                await DisplayAlert("Error", "Please enter both parameters.", "OK");
                return;
            }

            var stocks = await GetStocksAsync(param1, param2);
            StocksCollectionView.ItemsSource = stocks;
        }

        private async Task<List<Stock>> GetStocksAsync(string param1, string param2)
        {
            using (var client = new HttpClient())
            {
                var url = $"http://localhost:7059/api/stocks/ExecuteStoredProcedure?param1={param1}&param2={param2}";
                var response = await client.GetStringAsync(url);
                return JsonConvert.DeserializeObject<List<Stock>>(response);
            }
        }
    }
}
