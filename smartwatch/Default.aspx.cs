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

public partial class smartwatch_Default : System.Web.UI.Page
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
        if (Request["os"] != null)
        {
            os = Request.QueryString["os"];
            strSub = "AND os LIKE '" + os + "%'";
        }
        if (Request["RAM"] != null)
        {
            RAM = Request.QueryString["RAM"];
            strSub = strSub + " AND RAM LIKE '" + RAM + "%'";
        }
        if (Request["fc"] != null)
        {
            fc = Request.QueryString["fc"];
            if (fc != "No")
            {
                strSub = strSub + " AND frontcam !='No'";
            }
        }
        if (Request["rc"] != null)
        {
            rc = Request.QueryString["rc"];
            if (rc != "No")
            {
                strSub = strSub + " AND rearcam !='No'";
            }

        }
        if (Request["flash"] != null)
        {
            flash = Request.QueryString["flash"];
            if (flash != "No")
            {
                strSub = strSub + " AND flash !='No'";

            }
        }
        if (Request["rt"] != null)
        {
            rt = Request.QueryString["rt"];
            if (rt == "1")
            {
                strSub = strSub + " AND rate BETWEEN 1000 AND 10000";
            }
            else if (rt == "2")
            {
                strSub = strSub + " AND rate BETWEEN 10000 AND 15000";
            }
            else if (rt == "3")
            {
                strSub = strSub + " AND rate BETWEEN 15000 AND 20000";
            }
            else if (rt == "3")
            {
                strSub = strSub + " AND rate BETWEEN 20000 AND 25000";
            }
            else if (rt == "4")
            {
                strSub = strSub + " AND rate BETWEEN 25000 AND 30000";
            }
            else if (rt == "5")
            {
                strSub = strSub + " AND rate BETWEEN 30000 AND 35000";
            }
            else if (rt == "6")
            {
                strSub = strSub + " AND rate BETWEEN 35000 AND 40000";
            }
            else if (rt == "7")
            {
                strSub = strSub + " AND rate BETWEEN 40000 AND 45000";
            }
            else if (rt == "8")
            {
                strSub = strSub + " AND rate BETWEEN 45000 AND 50000";
            }
            else if (rt == "9")
            {
                strSub = strSub + " AND rate BETWEEN 50000 AND 100000";
            }
            else if (rt == "10")
            {
                strSub = strSub + " AND rate BETWEEN 100000 AND 10000000";
            }
        }
        if (Request["br"] != null)
        {
            br = Request.QueryString["br"];
            strSub = strSub + " AND brand LIKE '" + br + "%'";
        }
        if (Request["a"] != null)
        {
            a = Request.QueryString["a"];
            if (a == "Below 5MP")
            {
                strSSub = " AND frontcam LIKE '1MP%' UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '2MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '3MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '4MP%'";
            }
            if (a == "5MP - 10MP")
            {
                strSSub = " AND frontcam LIKE '5MP%' UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '6MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '7MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '8MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '9MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '10MP%'";
            }
            if (a == "11MP - 20MP")
            {
                strSSub = " AND frontcam LIKE '11MP%' UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '12MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '13MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '14MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '15MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '16MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '17MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '18MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '19MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '20MP%'";
            }
            if (a == "21MP - 30MP")
            {
                strSSub = " AND frontcam LIKE '21MP%' UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '22MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '23MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '24MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '25MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '26MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '27MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '28MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '29MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '30MP%'";
            }
            if (a == "31MP - 40MP")
            {
                strSSub = " AND frontcam LIKE '31MP%' UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '32MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '33MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '34MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '35MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '36MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '37MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '38MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '39MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '40MP%'";
            }
            if (a == "41MP - 50MP")
            {
                strSSub = " AND frontcam LIKE '41MP%' UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '42MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '43MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '44MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '45MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '46MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '47MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '48MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '49MP%'" +

                    " UNION SELECT * FROM smartphone WHERE verified='yes' " + strSub + " AND frontcam LIKE '50MP%'";
            }

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
        strSQL = "SELECT * FROM smartwatch WHERE verified='yes' " + strSub + strSSub + " ORDER BY regno DESC;";
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
        strSub1 = "AND dialshape LIKE '" + RadioButtonList1.SelectedItem + "%'";


        if (RadioButton3 != null)
        {
            strSub1 = strSub1 + "  AND bluetooth ='Yes'";
        }
        if (RadioButton4 != null)
        {
            strSub1 = strSub1 + "  AND gps ='Yes'";
        }
        if (RadioButton5 != null)
        {
            strSub1 = strSub1 + "  AND wifi ='Yes'";
        }
        if (RadioButtonList2.SelectedItem != null)
        {
            strSub1 = strSub1 + "AND callfunction LIKE '" + RadioButtonList2.SelectedValue + "%'";
        }

        if (DropDownList3.SelectedItem != null)
        {
            if (DropDownList3.SelectedItem.ToString() == "Select Brand")
            {

            }
            else
            {
                strSub1 = strSub1 + "AND brand LIKE '" + DropDownList3.SelectedItem + "%'";
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
                    strSub1 = strSub1 + " AND price BETWEEN 1000 AND 10000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "2")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 10000 AND 15000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "3")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 15000 AND 20000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "4")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 20000 AND 25000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "5")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 25000 AND 30000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "6")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 30000 AND 35000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "7")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 35000 AND 40000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "8")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 40000 AND 45000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "9")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 45000 AND 50000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "10")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 50000 AND 100000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "11")
                {
                    strSub1 = strSub1 + " AND price > 100000";
                }
            }
        }
        intPageSize.Text = "9";
        intCurrIndex.Text = "0";
        strSQL = "SELECT * FROM smartwatch WHERE verified='yes' " + strSub1 + strSSub1 + " ORDER BY regno DESC;";
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


    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {

        strSub1 = strSub1 + "  AND bluetooth ='Yes'";



        if (RadioButton4 != null)
        {
            strSub1 = strSub1 + "  AND gps ='Yes'";
        }
        if (RadioButton5 != null)
        {
            strSub1 = strSub1 + "  AND wifi ='Yes'";
        }

        if (RadioButtonList1.SelectedItem != null)
        {
            strSub1 = strSub1 + "AND dailshape LIKE '" + RadioButtonList1.SelectedItem + "%'";
        }
        if (RadioButtonList2.SelectedItem != null)
        {
            strSub1 = strSub1 + "AND callfunction LIKE '" + RadioButtonList2.SelectedValue + "%'";
        }



        if (DropDownList3.SelectedItem != null)
        {
            if (DropDownList3.SelectedItem.ToString() == "Select Brand")
            {

            }
            else
            {
                strSub1 = strSub1 + "AND brand LIKE '" + DropDownList3.SelectedItem + "%'";
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
                    strSub1 = strSub1 + " AND price BETWEEN 1000 AND 10000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "2")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 10000 AND 15000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "3")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 15000 AND 20000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "4")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 20000 AND 25000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "5")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 25000 AND 30000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "6")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 30000 AND 35000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "7")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 35000 AND 40000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "8")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 40000 AND 45000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "9")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 45000 AND 50000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "10")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 50000 AND 100000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "11")
                {
                    strSub1 = strSub1 + " AND price > 100000";
                }
            }
        }
        intPageSize.Text = "9";
        intCurrIndex.Text = "0";
        strSQL = "SELECT * FROM smartwatch WHERE verified='yes' " + strSub1 + strSSub1 + " ORDER BY regno DESC;";
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
            strSub1 = strSub1 + "AND dialshape LIKE '" + RadioButtonList1.SelectedItem + "%'";
        }
        if (RadioButtonList2.SelectedItem != null)
        {
            strSub1 = strSub1 + "AND callfunction LIKE '" + RadioButtonList2.SelectedValue + "%'";
        }



        if (RadioButton3 != null)
        {
            strSub1 = strSub1 + "  AND bluetooth ='Yes'";
        }
        if (RadioButton4 != null)
        {
            strSub1 = strSub1 + "  AND gps ='Yes'";
        }
        if (RadioButton5 != null)
        {
            strSub1 = strSub1 + "  AND wifi ='Yes'";
        }

        if (DropDownList3.SelectedItem != null)
        {
            if (DropDownList3.SelectedItem.ToString() == "Select Brand")
            {

            }
            else
            {
                strSub1 = strSub1 + "AND brand LIKE '" + DropDownList3.SelectedItem + "%'";
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
                    strSub1 = strSub1 + " AND price BETWEEN 1000 AND 10000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "2")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 10000 AND 15000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "3")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 15000 AND 20000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "4")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 20000 AND 25000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "5")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 25000 AND 30000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "6")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 30000 AND 35000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "7")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 35000 AND 40000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "8")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 40000 AND 45000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "9")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 45000 AND 50000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "10")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 50000 AND 100000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "11")
                {
                    strSub1 = strSub1 + " AND price > 100000";
                }
            }
        }
        intPageSize.Text = "9";
        intCurrIndex.Text = "0";
        strSQL = "SELECT * FROM smartwatch WHERE verified='yes' " + strSub1 + strSSub1 + " ORDER BY regno DESC;";
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
                strSub1 = strSub1 + " AND price BETWEEN 1000 AND 10000";
            }
            else if (DropDownList1.SelectedValue.ToString() == "2")
            {
                strSub1 = strSub1 + " AND price BETWEEN 10000 AND 15000";
            }
            else if (DropDownList1.SelectedValue.ToString() == "3")
            {
                strSub1 = strSub1 + " AND price BETWEEN 15000 AND 20000";
            }
            else if (DropDownList1.SelectedValue.ToString() == "4")
            {
                strSub1 = strSub1 + " AND price BETWEEN 20000 AND 25000";
            }
            else if (DropDownList1.SelectedValue.ToString() == "5")
            {
                strSub1 = strSub1 + " AND price BETWEEN 25000 AND 30000";
            }
            else if (DropDownList1.SelectedValue.ToString() == "6")
            {
                strSub1 = strSub1 + " AND price BETWEEN 30000 AND 35000";
            }
            else if (DropDownList1.SelectedValue.ToString() == "7")
            {
                strSub1 = strSub1 + " AND price BETWEEN 35000 AND 40000";
            }
            else if (DropDownList1.SelectedValue.ToString() == "8")
            {
                strSub1 = strSub1 + " AND price BETWEEN 40000 AND 45000";
            }
            else if (DropDownList1.SelectedValue.ToString() == "9")
            {
                strSub1 = strSub1 + " AND price BETWEEN 45000 AND 50000";
            }
            else if (DropDownList1.SelectedValue.ToString() == "10")
            {
                strSub1 = strSub1 + " AND price BETWEEN 50000 AND 100000";
            }
            else if (DropDownList1.SelectedValue.ToString() == "11")
            {
                strSub1 = strSub1 + " AND price > 100000";
            }
        }

        if (RadioButtonList1.SelectedItem != null)
        {
            strSub1 = strSub1 + "AND dialshape LIKE '" + RadioButtonList1.SelectedItem + "%'";
        }
        if (RadioButtonList2.SelectedItem != null)
        {
            strSub1 = strSub1 + "AND callfunction LIKE '" + RadioButtonList2.SelectedValue + "%'";
        }


        if (RadioButton3 != null)
        {
            strSub1 = strSub1 + "  AND bluetooth ='Yes'";
        }
        if (RadioButton4 != null)
        {
            strSub1 = strSub1 + "  AND gps ='Yes'";
        }
        if (RadioButton5 != null)
        {
            strSub1 = strSub1 + "  AND wifi ='Yes'";
        }

        if (DropDownList3.SelectedItem != null)
        {
            if (DropDownList3.SelectedItem.ToString() == "Select Brand")
            {

            }
            else
            {
                strSub1 = strSub1 + "AND brand LIKE '" + DropDownList3.SelectedItem + "%'";
            }
        }

        intPageSize.Text = "9";
        intCurrIndex.Text = "0";
        strSQL = "SELECT * FROM smartwatch WHERE verified='yes' " + strSub1 + strSSub1 + " ORDER BY regno DESC;";
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




    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {

        strSub1 = strSub1 + "  AND gps ='Yes'";


        if (RadioButton3 != null)
        {
            strSub1 = strSub1 + "  AND bluetooth ='Yes'";
        }

        if (RadioButton5 != null)
        {
            strSub1 = strSub1 + "  AND wifi ='Yes'";
        }

        if (RadioButtonList1.SelectedItem != null)
        {
            strSub1 = strSub1 + "AND dialshape LIKE '" + RadioButtonList1.SelectedItem + "%'";
        }
        if (RadioButtonList2.SelectedItem != null)
        {
            strSub1 = strSub1 + "AND callfunction LIKE '" + RadioButtonList2.SelectedValue + "%'";
        }
        if (DropDownList3.SelectedItem != null)
        {
            if (DropDownList3.SelectedItem.ToString() == "Select Brand")
            {

            }
            else
            {
                strSub1 = strSub1 + "AND brand LIKE '" + DropDownList3.SelectedItem + "%'";
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
                    strSub1 = strSub1 + " AND price BETWEEN 1000 AND 10000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "2")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 10000 AND 15000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "3")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 15000 AND 20000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "4")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 20000 AND 25000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "5")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 25000 AND 30000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "6")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 30000 AND 35000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "7")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 35000 AND 40000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "8")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 40000 AND 45000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "9")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 45000 AND 50000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "10")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 50000 AND 100000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "11")
                {
                    strSub1 = strSub1 + " AND price > 100000";
                }
            }
        }
        intPageSize.Text = "9";
        intCurrIndex.Text = "0";
        strSQL = "SELECT * FROM smartwatch WHERE verified='yes' " + strSub1 + strSSub1 + " ORDER BY regno DESC;";
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
    protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
    {
        strSub1 = strSub1 + "  AND wifi ='Yes'";


        if (RadioButton3 != null)
        {
            strSub1 = strSub1 + "  AND bluetooth ='Yes'";
        }

        if (RadioButton4 != null)
        {
            strSub1 = strSub1 + "  AND gps ='Yes'";

        }

        if (RadioButtonList1.SelectedItem != null)
        {
            strSub1 = strSub1 + "AND dialshape LIKE '" + RadioButtonList1.SelectedItem + "%'";
        }

        if (DropDownList3.SelectedItem != null)
        {
            if (DropDownList3.SelectedItem.ToString() == "Select Brand")
            {

            }
            else
            {
                strSub1 = strSub1 + "AND brand LIKE '" + DropDownList3.SelectedItem + "%'";
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
                    strSub1 = strSub1 + " AND price BETWEEN 1000 AND 10000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "2")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 10000 AND 15000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "3")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 15000 AND 20000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "4")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 20000 AND 25000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "5")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 25000 AND 30000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "6")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 30000 AND 35000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "7")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 35000 AND 40000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "8")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 40000 AND 45000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "9")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 45000 AND 50000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "10")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 50000 AND 100000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "11")
                {
                    strSub1 = strSub1 + " AND price > 100000";
                }
            }
        }
        intPageSize.Text = "9";
        intCurrIndex.Text = "0";
        strSQL = "SELECT * FROM smartwatch WHERE verified='yes' " + strSub1 + strSSub1 + " ORDER BY regno DESC;";
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

        strSub1 = strSub1 + "AND callfunction LIKE '" + RadioButtonList2.SelectedValue + "%'";

        if (RadioButton3 != null)
        {
            strSub1 = strSub1 + "  AND bluetooth ='Yes'";
        }

        if (RadioButton4 != null)
        {
            strSub1 = strSub1 + "  AND gps ='Yes'";

        }
        if (RadioButton5 != null)
        {
            strSub1 = strSub1 + "  AND wifi ='Yes'";

        }

        if (RadioButtonList1.SelectedItem != null)
        {
            strSub1 = strSub1 + "AND dialshape LIKE '" + RadioButtonList1.SelectedItem + "%'";
        }

        if (DropDownList3.SelectedItem != null)
        {
            if (DropDownList3.SelectedItem.ToString() == "Select Brand")
            {

            }
            else
            {
                strSub1 = strSub1 + "AND brand LIKE '" + DropDownList3.SelectedItem + "%'";
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
                    strSub1 = strSub1 + " AND price BETWEEN 1000 AND 10000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "2")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 10000 AND 15000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "3")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 15000 AND 20000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "4")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 20000 AND 25000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "5")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 25000 AND 30000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "6")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 30000 AND 35000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "7")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 35000 AND 40000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "8")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 40000 AND 45000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "9")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 45000 AND 50000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "10")
                {
                    strSub1 = strSub1 + " AND price BETWEEN 50000 AND 100000";
                }
                else if (DropDownList1.SelectedValue.ToString() == "11")
                {
                    strSub1 = strSub1 + " AND price > 100000";
                }
            }
        }
        intPageSize.Text = "9";
        intCurrIndex.Text = "0";
        strSQL = "SELECT * FROM smartwatch WHERE verified='yes' " + strSub1 + strSSub1 + " ORDER BY regno DESC;";
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
                cmd.CommandText = "select title from smartwatch where " +
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
                cmd.CommandText = "select title from smartwatch where " +
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
        sql = "select regno from smartwatch where title='" + txtContactsSearch.Text + "'";
        dr = db.reader(sql);
        if (dr.Read())
        {
            strReg = dr["regno"].ToString();

        }
        db.con.Close();
        database db1 = new database();
        db1.con.Open();
        sql = "select regno from smartwatch where title='" + TextBox1.Text + "'";
        dr = db1.reader(sql);
        if (dr.Read())
        {
            sstr = dr["regno"].ToString();

        }
        db.con.Close();
        Response.Redirect("compare.aspx?strReg=" + strReg + "&sstr=" + sstr);
    }
}


