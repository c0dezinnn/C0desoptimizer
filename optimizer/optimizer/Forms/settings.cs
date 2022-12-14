using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Win32;
using System.Windows.Forms;

namespace optimizer.Forms
{
    public partial class settings : Form
    {
        public settings()
        {
            InitializeComponent();
        }

        private void LoadTheme()
        {
            foreach (Control btns in this.Controls)
            {
                if (btns.GetType() == typeof(Button))
                {
                    Button btn = (Button)btns;
                    btn.BackColor = ThemeColor.PrimaryColor;
                    btn.ForeColor = Color.White;
                    btn.FlatAppearance.BorderColor = ThemeColor.SecondaryColor;
                }
            }

        }

        public static void AddApplicationToStartup()
        {
            using (RegistryKey key = Registry.CurrentUser.OpenSubKey("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run", true))
            {
                key.SetValue("C0des optimizer", "\"" + Application.ExecutablePath + "\"");
            }
        }

        public static void RemoveApplicationToStartup()
        {
            using (RegistryKey key = Registry.CurrentUser.OpenSubKey("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run", true))
            {
                key.DeleteValue("C0des optimizer");
            }
        }

        private void chkStartup_CheckedChanged(object sender, EventArgs e)
        {
            if(chkStartup.Checked)
            {
                AddApplicationToStartup();
            }
            else
            {
                RemoveApplicationToStartup();
            }
        }

        private void settings_Load(object sender, EventArgs e)
        {
            LoadTheme();
        }
    }
}
