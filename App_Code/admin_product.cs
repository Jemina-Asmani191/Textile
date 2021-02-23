using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for admin_product
/// </summary>
public class admin_product
{
    dbconnection x = new dbconnection();
	public admin_product()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_product_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}