using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for admin_current_opening
/// </summary>
public class admin_current_opening
{
    dbconnection x = new dbconnection();
	public admin_current_opening()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void current_opening_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}