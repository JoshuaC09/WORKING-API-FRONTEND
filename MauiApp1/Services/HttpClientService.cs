using MauiApp1.Models;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Json;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace MauiApp1.Services
{
    public class HttpClientService
    {
        private readonly HttpClient _httpClient;

        public HttpClientService(HttpClient httpClient)
        {
            _httpClient = httpClient;
        }

        public async Task<List<Stock>> ExecuteStoredProcedureAsync(string param1, string param2)
        {
            var response = await _httpClient.GetAsync($"api/stocks/ExecuteStoredProcedure?param1={param1}&param2={param2}");
            response.EnsureSuccessStatusCode();

            return await response.Content.ReadFromJsonAsync<List<Stock>>();
        }

       public async Task<bool> SetConnectionStringAsync(string connectionString)
{
    try
    {
        // URL encode the connection string
        string encodedConnectionString = System.Net.WebUtility.UrlEncode(connectionString);
        
        var content = new StringContent(JsonSerializer.Serialize(new { ConnectionString = encodedConnectionString }), Encoding.UTF8, "application/json");
        var response = await _httpClient.PostAsync("api/Database/SetConnectionString", content);

        if (!response.IsSuccessStatusCode)
        {
            var errorContent = await response.Content.ReadAsStringAsync();
            Console.WriteLine($"API call failed: {response.StatusCode}, {errorContent}");
            return false;
        }

        return true;
    }
    catch (Exception ex)
    {
        Console.WriteLine($"Exception in SetConnectionStringAsync: {ex.Message}");
        return false;
    }
}



        public async Task<List<Inventory>?> GetAllAsync()
        {
            return await _httpClient.GetFromJsonAsync<List<Inventory>>("/api/Inventory");
        }

        public async Task<Inventory?> GetByIdAsync(int id)
        {
            return await _httpClient.GetFromJsonAsync<Inventory>($"/api/Inventory/{id}");
        }

        public async Task AddProductAsync(Inventory inventory)
        {
            var response = await _httpClient.PostAsJsonAsync("/api/Inventory", inventory);
            response.EnsureSuccessStatusCode();
        }

        public async Task UpdateProductAsync(int id, Inventory inventory)
        {
            var response = await _httpClient.PutAsJsonAsync($"/api/Inventory/{id}", inventory);
            response.EnsureSuccessStatusCode();
        }

        public async Task DeleteProductAsync(int id)
        {
            var response = await _httpClient.DeleteAsync($"/api/Inventory/{id}");
            response.EnsureSuccessStatusCode();
        }
    }
}
