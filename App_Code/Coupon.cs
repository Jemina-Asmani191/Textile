using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Coupon
/// </summary>
public class Coupon
{
    dbconnection x = new dbconnection();
	public Coupon()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void coupon_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}