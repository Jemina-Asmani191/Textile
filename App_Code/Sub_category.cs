using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Sub_category
/// </summary>
public class Sub_category
{
    dbconnection x = new dbconnection();
	public Sub_category()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void subcategory_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}