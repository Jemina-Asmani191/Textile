using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Gallery
/// </summary>
public class Gallery
{
    dbconnection x = new dbconnection();
	public Gallery()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void gallery_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}