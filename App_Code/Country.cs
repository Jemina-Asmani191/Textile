using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Country
/// </summary>
public class Country
{
    dbconnection x = new dbconnection();
	public Country()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void country_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}