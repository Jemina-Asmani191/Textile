using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using paytm;

public partial class User_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String merchantKey = "rd_&uwtYvTsEoGXZ"; // Replace the with the Merchant Key provided by Paytm at the time of registration.
        
        Dictionary<string, string> parameters = new Dictionary<string, string>();
        string paytmChecksum = "";
        foreach (string key in Request.Form.Keys)
        {
            parameters.Add(key.Trim(), Request.Form[key].Trim());
        }

        if (parameters.ContainsKey("CHECKSUMHASH"))
        {
            paytmChecksum = parameters["CHECKSUMHASH"];
            parameters.Remove("CHECKSUMHASH");
        }

        if (CheckSum.verifyCheckSum(merchantKey, parameters, paytmChecksum))
        {
            string paytmstatus = parameters["STATUS"]; // transaction status
            //string txid = parameters["TXNID"]; // transaction Id
            string trdate = parameters["TXNDATE"]; // transaction date
            string bankname = parameters["BANKNAME"]; // Bank name
            string gname = parameters["GATEWAYNAME"]; // Gateway name
            string pmode = parameters["PAYMENTMODE"]; // Payment mode
            string orderid = parameters["ORDERID"]; // order Id

            //txnid.InnerText = "Transaction Id =" + txid;
            tdate.InnerText = "Transaction Date =" + trdate;
            tbankname.InnerText = "Bank Name =" + bankname;
            gwname.InnerText = "Gateway Name =" + gname;
            ptmode.InnerText = "Payment Mode =" + pmode;
            oid.InnerText = "Order Id =" + orderid;

            if (paytmstatus == "TXN_SUCCESS")
            {
                //Response.Write("Payment Successful");
                lblpayment.Text = "Your Payment is Successful!!";
            }
            else if (paytmstatus == "PENDING")
            {
                //Response.Write("Payment is Pending");
                lblpayment.Text = "Your Payment is Pending!!";
            }
            else if (paytmstatus == "TXN_FAILURE")
            {
                //Response.Write("Payment Failure!");
                lblpayment.Text = "Your Payment is Failure!!";
            }
        }
        else
        {
            //Response.Write("Checksum MisMatch");
            lblpayment.Text = "Checksum MisMatch..";
        }
        //Response.Redirect("invoice.aspx");
    }
    protected void btnhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("invoice.aspx");
    }
}