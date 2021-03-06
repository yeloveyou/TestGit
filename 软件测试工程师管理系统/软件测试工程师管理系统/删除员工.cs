﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace 软件测试工程师管理系统
{
    public partial class 删除员工 : Form
    {
        SqlConnection sconn = new SqlConnection();
        SqlCommand scomm = new SqlCommand();
        SqlCommand scommtimes = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        SqlDataReader sdreader;
        DataSet ds = new DataSet();
        public 删除员工()
        {
            InitializeComponent();
        }
        public 删除员工(string adminname)
        {
            InitializeComponent();
            textBox1.Text = adminname;
        }

        private void 删除员工_FormClosed(object sender, FormClosedEventArgs e)
        {
            new 管理员界面(textBox1.Text).Show();
            this.Hide();
        }

        private void 删除员工_Load(object sender, EventArgs e)
        {
            using (SqlConnection sconn = new SqlConnection(SConnStr.SConStr))
            {
                if (!string.Equals(sconn.State.ToString(), "Open"))
                    sconn.Open();
                scomm.Connection = sconn;
                scomm.CommandText = "select * from msg";
                sda.SelectCommand = scomm;
                SqlCommandBuilder bulid = new SqlCommandBuilder(sda);
                ds.Clear();
                sda.Fill(ds, "worker");//加载到dataset,创建一个用户表
                dgv用户.DataSource = ds.Tables["worker"];//ds上的worker表绑定到dgv用户上


                sconn.Close();

            }
        }

        private void dgv用户_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
           
        }

        private void button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sconn = new SqlConnection(SConnStr.SConStr))
            {
                if (!string.Equals(sconn.State.ToString(), "Open"))
                {
                    sconn.Open();
                }
                scomm.Connection = sconn;
                scomm.CommandText = string.Format("delete from msg where msg_num='{0}'",tbnumber.Text);
                scomm.ExecuteNonQuery();
                sconn.Close();

                if (!string.Equals(sconn.State.ToString(), "Open"))
                {
                    sconn.Open();
                }
                scomm.Connection = sconn;
                scomm.CommandText = string.Format("delete from acnt where msg_num='{0}'", tbnumber.Text);
                scomm.ExecuteNonQuery();
                sconn.Close();

                //删除成功后，刷新数据
                MessageBox.Show("删除成功");
                if (!string.Equals(sconn.State.ToString(), "Open"))
                    sconn.Open();
                scomm.Connection = sconn;
                scomm.CommandText = "select * from msg";
                sda.SelectCommand = scomm;
                SqlCommandBuilder bulid = new SqlCommandBuilder(sda);
                ds.Clear();
                sda.Fill(ds, "worker");//加载到dataset,创建一个用户表
                dgv用户.DataSource = ds.Tables["worker"];//ds上的worker表绑定到dgv用户上


                sconn.Close();
            }
        }

        private void dgv用户_MouseClick(object sender, MouseEventArgs e)
        {
            //当前的行中的第几列 
            tbnumber.Text = dgv用户.CurrentRow.Cells[0].Value.ToString();
            tbname.Text = dgv用户.CurrentRow.Cells[1].Value.ToString();
            tbsex.Text = dgv用户.CurrentRow.Cells[2].Value.ToString();
            tbbirthday.Text = dgv用户.CurrentRow.Cells[3].Value.ToString().Substring(0, dgv用户.CurrentRow.Cells[3].Value.ToString().Length - 8);
            tblocol.Text = dgv用户.CurrentRow.Cells[4].Value.ToString();
            tbdegree.Text = dgv用户.CurrentRow.Cells[5].Value.ToString();
            tbadress.Text = dgv用户.CurrentRow.Cells[6].Value.ToString();
            tbphone.Text = dgv用户.CurrentRow.Cells[7].Value.ToString();
            tbworkage.Text = dgv用户.CurrentRow.Cells[8].Value.ToString();
            tbsalary.Text = dgv用户.CurrentRow.Cells[9].Value.ToString();
        }
    }
}
