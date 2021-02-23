using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for State
/// </summary>
public class State
{
    dbconnection x = new dbconnection();
	public State()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void state_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}