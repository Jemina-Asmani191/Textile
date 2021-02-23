using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Category
/// </summary>
public class Category
{
    dbconnection x = new dbconnection();
	public Category()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void category_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}