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
    public partial class 员工界面 : Form
    {
        SqlConnection sconn = new SqlConnection();
        SqlCommand scomm = new SqlCommand();
        SqlCommand scommtimes = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        SqlDataReader sdreader;
        DataSet ds = new DataSet();
       // string SConStr = "server=localhost\\SQLEXPRESS;database=EMS;uid=sa;pwd=980420";

        public 员工界面()
        {
            InitializeComponent();
        }
        public 员工界面(string worknumber,string name)
        {
            InitializeComponent();
            textBox1.Text = worknumber;
            textBox2.Text = name;
        }
        private void 员工界面_FormClosed(object sender, FormClosedEventArgs e)
        {
            System.Environment.Exit(0);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            new 工资界面(textBox1.Text).Show();
            this.Hide();
        }

        private void button2_Click(object sender, EventArgs e)
        {

            new 员工资料(textBox1.Text).Show();
            this.Hide();
        }

        private void 员工界面_Load(object sender, EventArgs e)
        {

        }
    }
}
