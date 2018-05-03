using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;
using System.Data.SqlClient;

namespace Assignment
{
    public partial class Product1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string queryString = "SELECT Product_ID, Product_Price, Product_Info, Product_Name, Product_Quantity  FROM  [dbo].[Product] WHERE Product_ID = @tPatSName";
            string connectionString = "Data Source=SQL2016.FSE.Network;Initial Catalog=db_1624964_co5027_asg_a;User ID=user_db_1624964_co5027_asg_a;Password=Wolfheart8";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Parameters.AddWithValue("@tPatSName", "");
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();


                try
                {
                    while (reader.Read())
                    {
                        //Console.WriteLine(String.Format("{0}, {1}",
                        //reader["Product_ID"], reader["Product_Price"]));// etc

                        Response.Write(reader["Product_ID"]);
                        Response.Write(reader["Product_Price"]);
                        Response.Write(reader["Product_Name"]);
                        Response.Write(reader["Product_Quantity"]);
                    }
                }
                finally
                {
                    // Always call Close when done reading.
                    reader.Close();
                }
            }
        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {

            






            decimal postagePackagingCost = 3.95m;
            decimal productPrice = 10.00m;
            int quantityOfProduct = int.Parse(DDLQuantity.SelectedValue);
            decimal subTotal = (quantityOfProduct * productPrice);
            decimal total = subTotal + postagePackagingCost;

            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            var apiContext = new APIContext(accessToken);

            var productItem  = new Item();
            productItem.name = "Product 1";
            productItem.currency = "BND";
            productItem.price = productPrice.ToString();
            productItem.sku = "PRO1";
            productItem.quantity = quantityOfProduct.ToString();

            var transactionDetails = new Details();
            transactionDetails.tax = "0";
            transactionDetails.shipping = postagePackagingCost.ToString();
            transactionDetails.subtotal = subTotal.ToString("0.00");

            var transactionAmount = new Amount();
            transactionAmount.currency = "BND";
            transactionAmount.total = total.ToString("0.00");
            transactionAmount.details = transactionDetails;

            var transaction = new Transaction();
            transaction.description = "Product 1 description";
            transaction.invoice_number = Guid.NewGuid().ToString();
            transaction.amount = transactionAmount;
            transaction.item_list = new ItemList
            {
                items = new List<Item> { productItem }
            };

            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            redirectUrls.cancel_url = "http://" + HttpContext.Current.Request.Url.Authority + "Cancel.aspx";
            redirectUrls.return_url = "http://" + HttpContext.Current.Request.Url.Authority + "CompletePurchase.aspx";

            var payment = Payment.Create(apiContext, new Payment
            {
                intent = "sale",
                payer = payer,
                transactions = new List<Transaction> { transaction },
                redirect_urls = redirectUrls
            });

            Session["paymentid"] = payment.id;

            foreach (var link in payment.links)
            {
                if (link.rel.ToLower().Trim().Equals("approval_url"))
                {
                    Response.Redirect(link.href);
                }
            }





        }
       


    }
    }
    







