using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_registration
/// </summary>
public class Admin_registration
{
    dbconnection x = new dbconnection();
	public Admin_registration()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void register_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}