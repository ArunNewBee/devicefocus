using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;
using System.Collections.Generic;

public partial class laptop_Default : System.Web.UI.Page
    {
       
        int regid, noofenq;
        string reg, subcat, brand, os, RAM, a, b, stram, strfc, strrc, strflash, stros, stra, fc, rc, flash, rt, br, sql, sstr, strReg;
        string strSQL, strSub, strSSub, strSub1, strSSub1;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["brand"] != null)
            {
                brand = Request.QueryString["brand"];
                strSub = "AND brand LIKE '" + brand + "%'";
            }

            if (!Page.IsPostBack)
            {
                //FileStream fs = new FileStream();

                intPageSize.Text = "9";
                intCurrIndex.Text = "0";
                PopulateImageGallary();
                DataList1.DataKeyField = "regno";
            }
        }
        public void PopulateImageGallary()
        {
            strSQL = "SELECT * FROM laptop WHERE verified='yes' "+strSub+" ORDER BY regno DESC;";
            SqlConnection conn = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
            conn.Open();
            SqlCommand comm = new SqlCommand(strSQL, conn);
            SqlDataAdapter objDA = new SqlDataAdapter(comm);
            DataSet objDS = new DataSet();
            if (!Page.IsPostBack)
            {
                objDA.Fill(objDS);
                intRecordCount.Text = objDS.Tables[0].Rows.Count.ToString();
                objDS = null;
                objDS = new DataSet();
            }
            objDA.Fill(objDS, int.Parse(intCurrIndex.Text), int.Parse(intPageSize.Text), "Default");
            DataList1.DataSource = objDS.Tables[0].DefaultView;
            DataList1.DataBind();
            conn.Close();
            PrintStatus();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            intCurrIndex.Text = "0";
            PopulateImageGallary();
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            intCurrIndex.Text = Convert.ToString(Convert.ToInt32(intCurrIndex.Text) - Convert.ToInt32(intPageSize.Text));
            if (Convert.ToInt32(intCurrIndex.Text) < 0)
            {
                intCurrIndex.Text = "0";
            }
            PopulateImageGallary();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(intCurrIndex.Text) + 1 < Convert.ToInt32(intRecordCount.Text))
            {
                intCurrIndex.Text = Convert.ToString(Convert.ToInt32(intCurrIndex.Text) + Convert.ToInt32(intPageSize.Text));
            }
            PopulateImageGallary();
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            int tmpInt = 0;
            tmpInt = Convert.ToInt32(intRecordCount.Text) % Convert.ToInt32(intPageSize.Text);
            if (tmpInt > 0)
            {
                intCurrIndex.Text = Convert.ToString(Convert.ToInt32(intRecordCount.Text) - tmpInt);
            }
            else
            {
                intCurrIndex.Text = Convert.ToString(Convert.ToInt32(intRecordCount.Text) - Convert.ToInt32(intPageSize.Text));
            }
            PopulateImageGallary();
        }
        private void PrintStatus()
        {
            lblStatus.Text = "Total Records:" + intRecordCount.Text;
            lblStatus.Text += " - Showing Page: ";
            lblStatus.Text += Convert.ToString(Convert.ToInt32(intCurrIndex.Text) / Convert.ToInt32(intPageSize.Text) + 1);
            lblStatus.Text += " of ";
            if (Convert.ToInt32(intRecordCount.Text) % Convert.ToInt32(intPageSize.Text) > 0)
            {
                lblStatus.Text += Convert.ToString(Convert.ToInt32(intRecordCount.Text) / Convert.ToInt32(intPageSize.Text) + 1);
            }
            else
            {
                lblStatus.Text += Convert.ToString(Convert.ToInt32(intRecordCount.Text) / Convert.ToInt32(intPageSize.Text));
            }
            lblStatus.Text += "";
            //if (intRecordCount.Text == "0")
            // {
            //    Response.Redirect("listing.aspx");
            // }
        }
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue.ToString() == "1")
            {
                strSub1 = "AND ram = 1";
            }
            else if (RadioButtonList1.SelectedValue.ToString() == "2")
            {
                strSub1 = "AND ram = 2";
            }
            else if (RadioButtonList1.SelectedValue.ToString() == "3")
            {
                strSub1 = "AND ram = 4";
            }
            else if (RadioButtonList1.SelectedValue.ToString() == "4")
            {
                strSub1 = "AND ram = 6";
            }
            else if (RadioButtonList1.SelectedValue.ToString() == "5")
            {
                strSub1 = "AND ram = 8";
            }
            else if (RadioButtonList1.SelectedValue.ToString() == "6")
            {
                strSub1 = "AND ram >= 16";
            }


            if (RadioButtonList2.SelectedItem != null)
            {
                if (RadioButtonList2.SelectedValue.ToString() == "1")
                {
                    strSub1 = "AND inbuildhdd = 160";
                }
                else if (RadioButtonList2.SelectedValue.ToString() == "2")
                {
                    strSub1 = "AND inbuildhdd = 250";
                }
                else if (RadioButtonList2.SelectedValue.ToString() == "3")
                {
                    strSub1 = "AND inbuildhdd = 320";
                }
                else if (RadioButtonList2.SelectedValue.ToString() == "4")
                {
                    strSub1 = "AND inbuildhdd = 500";
                }
                else if (RadioButtonList2.SelectedValue.ToString() == "5")
                {
                    strSub1 = "AND inbuildhdd = 640";
                }
                else if (RadioButtonList2.SelectedValue.ToString() == "6")
                {
                    strSub1 = "AND inbuildhdd = 750";
                }
                else if (RadioButtonList2.SelectedValue.ToString() == "7")
                {
                    strSub1 = "AND inbuildhdd = 1000";
                }

            }

            if (DropDownList3.SelectedItem != null)
            {
                if (DropDownList3.SelectedItem.ToString() == "All Brand")
                {

                }
                else
                {
                    strSub1 = strSub1 + " AND brand LIKE '" + DropDownList3.SelectedItem + "%'";
                }
            }
            if (DropDownList1.SelectedItem != null)
            {
                if (DropDownList1.SelectedItem.ToString() == "Select Budget")
                {

                }
                else
                {
                    if (DropDownList1.SelectedValue.ToString() == "1")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 10000 AND 20000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "2")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 20000 AND 30000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "3")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 30000 AND 40000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "4")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 40000 AND 50000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "5")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 50000 AND 60000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "6")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 60000 AND 70000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "7")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 70000 AND 80000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "8")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 80000 AND 90000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "9")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 90000 AND 100000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "10")
                    {
                        strSub1 = strSub1 + " AND price > 100000";
                    }
                    
                }
            }
            intPageSize.Text = "9";
            intCurrIndex.Text = "0";
            strSQL = "SELECT * FROM laptop WHERE verified='yes' " + strSub1 + strSSub1 + " ORDER BY regno DESC;";
            SqlConnection conn = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
            conn.Open();
            SqlCommand comm = new SqlCommand(strSQL, conn);
            SqlDataAdapter objDA = new SqlDataAdapter(comm);
            DataSet objDS = new DataSet();
            if (!Page.IsPostBack)
            {
                objDA.Fill(objDS);
                intRecordCount.Text = objDS.Tables[0].Rows.Count.ToString();
                objDS = null;
                objDS = new DataSet();
            }
            objDA.Fill(objDS, int.Parse(intCurrIndex.Text), int.Parse(intPageSize.Text), "Default");
            DataList1.DataSource = objDS.Tables[0].DefaultView;
            DataList1.DataBind();
            conn.Close();
            PrintStatus();
            DataList1.DataKeyField = "regno";
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList2.SelectedValue.ToString() == "1")
            {
                strSub1 = "AND inbuildhdd = 160";
            }
            else if (RadioButtonList2.SelectedValue.ToString() == "2")
            {
                strSub1 = "AND inbuildhdd = 250";
            }
            else if (RadioButtonList2.SelectedValue.ToString() == "3")
            {
                strSub1 = "AND inbuildhdd = 320";
            }
            else if (RadioButtonList2.SelectedValue.ToString() == "4")
            {
                strSub1 = "AND inbuildhdd = 500";
            }
            else if (RadioButtonList2.SelectedValue.ToString() == "5")
            {
                strSub1 = "AND inbuildhdd = 640";
            }
            else if (RadioButtonList2.SelectedValue.ToString() == "6")
            {
                strSub1 = "AND inbuildhdd = 750";
            }
            else if (RadioButtonList2.SelectedValue.ToString() == "7")
            {
                strSub1 = "AND inbuildhdd = 1000";
            }

            if (RadioButtonList1.SelectedItem != null)
            {

                if (RadioButtonList1.SelectedValue.ToString() == "1")
                {
                    strSub1 = strSub1 + " AND ram = 1";
                }
                else if (RadioButtonList1.SelectedValue.ToString() == "2")
                {
                    strSub1 = strSub1 + " AND ram = 2";
                }
                else if (RadioButtonList1.SelectedValue.ToString() == "3")
                {
                    strSub1 = strSub1 + " AND ram = 4";
                }
                else if (RadioButtonList1.SelectedValue.ToString() == "4")
                {
                    strSub1 = strSub1 + " AND ram = 6";
                }
                else if (RadioButtonList1.SelectedValue.ToString() == "5")
                {
                    strSub1 = strSub1 + " AND ram = 8";
                }
                else if (RadioButtonList1.SelectedValue.ToString() == "6")
                {
                    strSub1 = strSub1 + " AND ram >= 16";
                }
            }
            
            if (DropDownList3.SelectedItem != null)
            {
                if (DropDownList3.SelectedItem.ToString() == "All Brand")
                {

                }
                else
                {
                    strSub1 = strSub1 + " AND brand LIKE '" + DropDownList3.SelectedItem + "%'";
                }
            }
            if (DropDownList1.SelectedItem != null)
            {
                if (DropDownList1.SelectedItem.ToString() == "Select Budget")
                {

                }
                else
                {
                    if (DropDownList1.SelectedValue.ToString() == "1")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 10000 AND 20000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "2")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 20000 AND 30000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "3")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 30000 AND 40000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "4")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 40000 AND 50000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "5")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 50000 AND 60000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "6")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 60000 AND 70000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "7")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 70000 AND 80000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "8")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 80000 AND 90000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "9")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 90000 AND 100000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "10")
                    {
                        strSub1 = strSub1 + " AND price > 100000";
                    }
                }
            }
            intPageSize.Text = "9";
            intCurrIndex.Text = "0";
            strSQL = "SELECT * FROM laptop WHERE verified='yes' " + strSub1 + strSSub1 + " ORDER BY regno DESC;";
            SqlConnection conn = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
            conn.Open();
            SqlCommand comm = new SqlCommand(strSQL, conn);
            SqlDataAdapter objDA = new SqlDataAdapter(comm);
            DataSet objDS = new DataSet();
            if (!Page.IsPostBack)
            {
                objDA.Fill(objDS);
                intRecordCount.Text = objDS.Tables[0].Rows.Count.ToString();
                objDS = null;
                objDS = new DataSet();
            }
            objDA.Fill(objDS, int.Parse(intCurrIndex.Text), int.Parse(intPageSize.Text), "Default");
            DataList1.DataSource = objDS.Tables[0].DefaultView;
            DataList1.DataBind();
            conn.Close();
            PrintStatus();
            DataList1.DataKeyField = "regno";
        }

       

       
        
        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedItem != null)
            {
                if (RadioButtonList1.SelectedValue.ToString() == "1")
                {
                    strSub1 = strSub1 + "AND ram = 1";
                }
                else if (RadioButtonList1.SelectedValue.ToString() == "2")
                {
                    strSub1 = strSub1 + "AND ram = 2";
                }
                else if (RadioButtonList1.SelectedValue.ToString() == "3")
                {
                    strSub1 = strSub1 + "AND ram = 4";
                }
                else if (RadioButtonList1.SelectedValue.ToString() == "4")
                {
                    strSub1 = strSub1 + "AND ram = 6";
                }
                else if (RadioButtonList1.SelectedValue.ToString() == "5")
                {
                    strSub1 = strSub1 + "AND ram = 8";
                }
                else if (RadioButtonList1.SelectedValue.ToString() == "6")
                {
                    strSub1 = strSub1 + "AND ram >= 16";
                }
            }
            if (RadioButtonList2.SelectedItem != null)
            {
                if (RadioButtonList2.SelectedValue.ToString() == "1")
                {
                    strSub1 = "AND inbuildhdd = 160";
                }
                else if (RadioButtonList2.SelectedValue.ToString() == "2")
                {
                    strSub1 = "AND inbuildhdd = 250";
                }
                else if (RadioButtonList2.SelectedValue.ToString() == "3")
                {
                    strSub1 = "AND inbuildhdd = 320";
                }
                else if (RadioButtonList2.SelectedValue.ToString() == "4")
                {
                    strSub1 = "AND inbuildhdd = 500";
                }
                else if (RadioButtonList2.SelectedValue.ToString() == "5")
                {
                    strSub1 = "AND inbuildhdd = 640";
                }
                else if (RadioButtonList2.SelectedValue.ToString() == "6")
                {
                    strSub1 = "AND inbuildhdd = 750";
                }
                else if (RadioButtonList2.SelectedValue.ToString() == "7")
                {
                    strSub1 = "AND inbuildhdd = 1000";
                }
            }

            
            if (DropDownList3.SelectedItem != null)
            {
                if (DropDownList3.SelectedItem.ToString() == "All Brand")
                {

                }
                else
                {
                    strSub1 = strSub1 + " AND brand LIKE '" + DropDownList3.SelectedItem + "%'";
                }
            }
            if (DropDownList1.SelectedItem != null)
            {
                if (DropDownList1.SelectedItem.ToString() == "Select Budget")
                {

                }
                else
                {
                    if (DropDownList1.SelectedValue.ToString() == "1")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 10000 AND 20000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "2")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 20000 AND 30000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "3")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 30000 AND 40000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "4")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 40000 AND 50000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "5")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 50000 AND 60000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "6")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 60000 AND 70000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "7")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 70000 AND 80000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "8")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 80000 AND 90000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "9")
                    {
                        strSub1 = strSub1 + " AND price BETWEEN 90000 AND 100000";
                    }
                    else if (DropDownList1.SelectedValue.ToString() == "10")
                    {
                        strSub1 = strSub1 + " AND price > 100000";
                    }
                }
            }
            intPageSize.Text = "9";
            intCurrIndex.Text = "0";
            strSQL = "SELECT * FROM laptop WHERE verified='yes' " + strSub1 + strSSub1 + " ORDER BY regno DESC;";
            SqlConnection conn = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
            conn.Open();
            SqlCommand comm = new SqlCommand(strSQL, conn);
            SqlDataAdapter objDA = new SqlDataAdapter(comm);
            DataSet objDS = new DataSet();
            if (!Page.IsPostBack)
            {
                objDA.Fill(objDS);
                intRecordCount.Text = objDS.Tables[0].Rows.Count.ToString();
                objDS = null;
                objDS = new DataSet();
            }
            objDA.Fill(objDS, int.Parse(intCurrIndex.Text), int.Parse(intPageSize.Text), "Default");
            DataList1.DataSource = objDS.Tables[0].DefaultView;
            DataList1.DataBind();
            conn.Close();
            PrintStatus();
            DataList1.DataKeyField = "regno";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (DropDownList1.SelectedItem.ToString() == "Select Budget")
            {

            }
            else
            {
                if (DropDownList1.SelectedValue.ToString() == "1")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 10000 AND 20000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "2")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 20000 AND 30000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "3")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 30000 AND 40000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "4")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 40000 AND 50000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "5")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 50000 AND 60000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "6")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 60000 AND 70000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "7")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 70000 AND 80000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "8")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 80000 AND 90000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "9")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 90000 AND 100000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "10")
                {
                    strSub1 = strSub1 + " AND price > 100000";
                }
            }

            if (RadioButtonList1.SelectedItem != null)
            {
                if (RadioButtonList1.SelectedValue.ToString() == "1")
                {
                    strSub1 = strSub1 + " AND ram = 1";
                }
                else if (RadioButtonList1.SelectedValue.ToString() == "2")
                {
                    strSub1 = strSub1 + " AND ram = 2";
                }
                else if (RadioButtonList1.SelectedValue.ToString() == "3")
                {
                    strSub1 = strSub1 + " AND ram = 4";
                }
                else if (RadioButtonList1.SelectedValue.ToString() == "4")
                {
                    strSub1 = strSub1 + " AND ram = 6";
                }
                else if (RadioButtonList1.SelectedValue.ToString() == "5")
                {
                    strSub1 = strSub1 + " AND ram = 8";
                }
                else if (RadioButtonList1.SelectedValue.ToString() == "6")
                {
                    strSub1 = strSub1 + " AND ram >= 16";
                }
            }
            if (RadioButtonList2.SelectedItem != null)
            {
                if (RadioButtonList2.SelectedValue.ToString() == "1")
                {
                    strSub1 = "AND inbuildhdd = 160";
                }
                else if (RadioButtonList2.SelectedValue.ToString() == "2")
                {
                    strSub1 = "AND inbuildhdd = 250";
                }
                else if (RadioButtonList2.SelectedValue.ToString() == "3")
                {
                    strSub1 = "AND inbuildhdd = 320";
                }
                else if (RadioButtonList2.SelectedValue.ToString() == "4")
                {
                    strSub1 = "AND inbuildhdd = 500";
                }
                else if (RadioButtonList2.SelectedValue.ToString() == "5")
                {
                    strSub1 = "AND inbuildhdd = 640";
                }
                else if (RadioButtonList2.SelectedValue.ToString() == "6")
                {
                    strSub1 = "AND inbuildhdd = 750";
                }
                else if (RadioButtonList2.SelectedValue.ToString() == "7")
                {
                    strSub1 = "AND inbuildhdd = 1000";
                }
            }

            
            if (DropDownList3.SelectedItem != null)
            {
                if (DropDownList3.SelectedItem.ToString() == "All Brand")
                {

                }
                else
                {
                    strSub1 = strSub1 + " AND brand LIKE '" + DropDownList3.SelectedItem + "%'";
                }
            }

            intPageSize.Text = "9";
            intCurrIndex.Text = "0";
            strSQL = "SELECT * FROM laptop WHERE verified='yes' " + strSub1 + strSSub1 + " ORDER BY regno DESC;";
            SqlConnection conn = new SqlConnection(@"Data Source=208.91.198.59;User ID=devicedata;Password='!#focuS*1'");
            conn.Open();
            SqlCommand comm = new SqlCommand(strSQL, conn);
            SqlDataAdapter objDA = new SqlDataAdapter(comm);
            DataSet objDS = new DataSet();
            if (!Page.IsPostBack)
            {
                objDA.Fill(objDS);
                intRecordCount.Text = objDS.Tables[0].Rows.Count.ToString();
                objDS = null;
                objDS = new DataSet();
            }
            objDA.Fill(objDS, int.Parse(intCurrIndex.Text), int.Parse(intPageSize.Text), "Default");
            DataList1.DataSource = objDS.Tables[0].DefaultView;
            DataList1.DataBind();
            conn.Close();
            PrintStatus();
            DataList1.DataKeyField = "regno";
        }

        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static List<string> SearchCustomers(string prefixText, int count)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager
                        .ConnectionStrings["constr"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select title from laptop where " +
                    "title like '%'+ @SearchText + '%'";
                    cmd.Parameters.AddWithValue("@SearchText", prefixText);
                    cmd.Connection = conn;
                    conn.Open();
                    List<string> customers = new List<string>();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            customers.Add(sdr["title"].ToString());
                        }
                    }
                    conn.Close();
                    return customers;
                }
            }
        }


        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static List<string> SearchCustomers1(string prefixText, int count)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager
                        .ConnectionStrings["constr"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select title from laptop where " +
                    "title like '%'+ @SearchText + '%'";
                    cmd.Parameters.AddWithValue("@SearchText", prefixText);
                    cmd.Connection = conn;
                    conn.Open();
                    List<string> customers = new List<string>();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            customers.Add(sdr["title"].ToString());
                        }
                    }
                    conn.Close();
                    return customers;
                }
            }
        }
        protected void btn3_Click(object sender, EventArgs e)
        {
            database db = new database();
            db.con.Open();
            sql = "select regno from laptop where title='" + txtContactsSearch.Text + "'";
            dr = db.reader(sql);
            if (dr.Read())
            {
                strReg = dr["regno"].ToString();

            }
            db.con.Close();
            database db1 = new database();
            db1.con.Open();
            sql = "select regno from laptop where title='" + TextBox1.Text + "'";
            dr = db1.reader(sql);
            if (dr.Read())
            {
                sstr = dr["regno"].ToString();

            }
            db.con.Close();
            Response.Redirect("compare.aspx?strReg=" + strReg + "&sstr=" + sstr);
        }



    }

