using System;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI;
using Newtonsoft.Json;

namespace JOB_Portal.MainMasterPages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void btnSubmit_Click(object sender, EventArgs e)
        {
            await SubmitFormDataAsync();
        }

        private async Task SubmitFormDataAsync()
        {
            using (HttpClient client = new HttpClient())
            {
                client.BaseAddress = new Uri("https://api.web3forms.com/");
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));

                var data = new
                {
                    access_key = "d3932030-7493-4a24-a78f-3b3d64ea5ba9",
                    name = txtName.Text,
                    email = txtEmail.Text,
                    message = txtMessage.Text
                };

                string json = JsonConvert.SerializeObject(data);
                StringContent content = new StringContent(json, Encoding.UTF8, "application/json");

                HttpResponseMessage response = await client.PostAsync("submit", content);

                if (response.IsSuccessStatusCode)
                {
                    Response.Redirect("Emailsend.aspx");  
                }
                
            }
        }

    }
}