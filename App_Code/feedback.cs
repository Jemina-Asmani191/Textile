using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for feedback
/// </summary>
public class feedback
{
    dbconnection x = new dbconnection();
	public feedback()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void feedback_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}