using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for City
/// </summary>
public class City
{
    dbconnection x = new dbconnection();
	public City()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void city_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}