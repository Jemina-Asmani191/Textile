﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="Database")]
public partial class deliveryDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void Insertdelivery(delivery instance);
  partial void Updatedelivery(delivery instance);
  partial void Deletedelivery(delivery instance);
  #endregion
	
	public deliveryDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public deliveryDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public deliveryDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public deliveryDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public deliveryDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<delivery> deliveries
	{
		get
		{
			return this.GetTable<delivery>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.delivery")]
public partial class delivery : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private decimal _uid;
	
	private string _uname;
	
	private System.Nullable<decimal> _umobileno;
	
	private System.Nullable<decimal> _pincode;
	
	private string _locality;
	
	private string _address;
	
	private string _city;
	
	private string _state;
	
	private string _landmark;
	
	private System.Nullable<decimal> _altumobileno;
	
	private string _uemail;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnuidChanging(decimal value);
    partial void OnuidChanged();
    partial void OnunameChanging(string value);
    partial void OnunameChanged();
    partial void OnumobilenoChanging(System.Nullable<decimal> value);
    partial void OnumobilenoChanged();
    partial void OnpincodeChanging(System.Nullable<decimal> value);
    partial void OnpincodeChanged();
    partial void OnlocalityChanging(string value);
    partial void OnlocalityChanged();
    partial void OnaddressChanging(string value);
    partial void OnaddressChanged();
    partial void OncityChanging(string value);
    partial void OncityChanged();
    partial void OnstateChanging(string value);
    partial void OnstateChanged();
    partial void OnlandmarkChanging(string value);
    partial void OnlandmarkChanged();
    partial void OnaltumobilenoChanging(System.Nullable<decimal> value);
    partial void OnaltumobilenoChanged();
    partial void OnuemailChanging(string value);
    partial void OnuemailChanged();
    #endregion
	
	public delivery()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_uid", AutoSync=AutoSync.OnInsert, DbType="Decimal(18,0) NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public decimal uid
	{
		get
		{
			return this._uid;
		}
		set
		{
			if ((this._uid != value))
			{
				this.OnuidChanging(value);
				this.SendPropertyChanging();
				this._uid = value;
				this.SendPropertyChanged("uid");
				this.OnuidChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_uname", DbType="NVarChar(50)")]
	public string uname
	{
		get
		{
			return this._uname;
		}
		set
		{
			if ((this._uname != value))
			{
				this.OnunameChanging(value);
				this.SendPropertyChanging();
				this._uname = value;
				this.SendPropertyChanged("uname");
				this.OnunameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_umobileno", DbType="Decimal(18,0)")]
	public System.Nullable<decimal> umobileno
	{
		get
		{
			return this._umobileno;
		}
		set
		{
			if ((this._umobileno != value))
			{
				this.OnumobilenoChanging(value);
				this.SendPropertyChanging();
				this._umobileno = value;
				this.SendPropertyChanged("umobileno");
				this.OnumobilenoChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_pincode", DbType="Decimal(18,0)")]
	public System.Nullable<decimal> pincode
	{
		get
		{
			return this._pincode;
		}
		set
		{
			if ((this._pincode != value))
			{
				this.OnpincodeChanging(value);
				this.SendPropertyChanging();
				this._pincode = value;
				this.SendPropertyChanged("pincode");
				this.OnpincodeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_locality", DbType="NVarChar(50)")]
	public string locality
	{
		get
		{
			return this._locality;
		}
		set
		{
			if ((this._locality != value))
			{
				this.OnlocalityChanging(value);
				this.SendPropertyChanging();
				this._locality = value;
				this.SendPropertyChanged("locality");
				this.OnlocalityChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_address", DbType="NVarChar(50)")]
	public string address
	{
		get
		{
			return this._address;
		}
		set
		{
			if ((this._address != value))
			{
				this.OnaddressChanging(value);
				this.SendPropertyChanging();
				this._address = value;
				this.SendPropertyChanged("address");
				this.OnaddressChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_city", DbType="NVarChar(50)")]
	public string city
	{
		get
		{
			return this._city;
		}
		set
		{
			if ((this._city != value))
			{
				this.OncityChanging(value);
				this.SendPropertyChanging();
				this._city = value;
				this.SendPropertyChanged("city");
				this.OncityChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_state", DbType="NVarChar(50)")]
	public string state
	{
		get
		{
			return this._state;
		}
		set
		{
			if ((this._state != value))
			{
				this.OnstateChanging(value);
				this.SendPropertyChanging();
				this._state = value;
				this.SendPropertyChanged("state");
				this.OnstateChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_landmark", DbType="NVarChar(50)")]
	public string landmark
	{
		get
		{
			return this._landmark;
		}
		set
		{
			if ((this._landmark != value))
			{
				this.OnlandmarkChanging(value);
				this.SendPropertyChanging();
				this._landmark = value;
				this.SendPropertyChanged("landmark");
				this.OnlandmarkChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_altumobileno", DbType="Decimal(18,0)")]
	public System.Nullable<decimal> altumobileno
	{
		get
		{
			return this._altumobileno;
		}
		set
		{
			if ((this._altumobileno != value))
			{
				this.OnaltumobilenoChanging(value);
				this.SendPropertyChanging();
				this._altumobileno = value;
				this.SendPropertyChanged("altumobileno");
				this.OnaltumobilenoChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_uemail", DbType="NVarChar(50)")]
	public string uemail
	{
		get
		{
			return this._uemail;
		}
		set
		{
			if ((this._uemail != value))
			{
				this.OnuemailChanging(value);
				this.SendPropertyChanging();
				this._uemail = value;
				this.SendPropertyChanged("uemail");
				this.OnuemailChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
#pragma warning restore 1591