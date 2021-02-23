using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for resume_form
/// </summary>
public class resume_form
{
    dbconnection x = new dbconnection();
	public resume_form()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void resume_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}