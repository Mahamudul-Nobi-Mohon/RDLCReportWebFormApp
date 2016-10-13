using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Microsoft.Reporting.WebForms;

public partial class _Default : System.Web.UI.Page
{
    String con = System.Configuration.ConfigurationManager.ConnectionStrings["PhoneNumberConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void button1_Click(object sender, EventArgs e)
    {
        ReportViewer1.Reset();
        ReportDataSource reptsrc = new ReportDataSource("DataSet1",GetData());
        ReportViewer1.LocalReport.DataSources.Add(reptsrc);
        ReportViewer1.LocalReport.ReportPath = "Report.rdlc";
        ReportViewer1.LocalReport.Refresh();

    }

    private DataTable GetData()
    {
        DataTable dt = new DataTable();
        using (SqlConnection cn = new SqlConnection(con))
        {
            SqlDataAdapter adp = new SqlDataAdapter("select name,phonenumber,gender,description from phonenumber", cn);
            adp.Fill(dt);
        }
        return dt;
    }


}