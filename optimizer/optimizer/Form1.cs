using System.Runtime.InteropServices;

namespace optimizer
{
    public partial class FormMainMenu : Form
    {
        //Fields
        private Button currentbutton;
        private Random random;
        private int tempIndex;
        private Form activeForm;

        //Constructor
        public FormMainMenu()
        {
            InitializeComponent();
            random = new Random();
            this.Text = string.Empty;
            this.ControlBox = false;
            this.MaximizedBounds = Screen.FromHandle(this.Handle).WorkingArea;
        }

        [DllImport("user32.DLL", EntryPoint = "ReleaseCapture")]
        private extern static void ReleaseCapture();

        [DllImport("user32.DLL", EntryPoint = "SendMessage")]
        private extern static void SendMessage(System.IntPtr hWnd, int wMsg, int wParam, int lParam);

        //Methods

        private Color SelectThemeColor()
        {
            int index = random.Next(ThemeColor.ColorList.Count);
            while(tempIndex == index)
            {
               index =random.Next(ThemeColor.ColorList.Count);
            }
            tempIndex = index;
            string color = ThemeColor.ColorList[index];
            return ColorTranslator.FromHtml(color);
        }

        private void ActivateButton(object btnSender)
            {
                if(btnSender != null)
                {
                    if(currentbutton !=(Button)btnSender)
                    {
                        DisableButton();
                        Color color = SelectThemeColor();
                        currentbutton=(Button)btnSender;
                        currentbutton.BackColor = color;
                        currentbutton.ForeColor = Color.White;
                        currentbutton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
                        panelTitleBar.BackColor = color;
                        panelLogo.BackColor = ThemeColor.ChangeColorBrightness(color, -0.3);
                        ThemeColor.PrimaryColor = color;
                        ThemeColor.SecondaryColor = ThemeColor.ChangeColorBrightness(color, -0.3);
                }
                }
            }

            private void DisableButton()
            {
                foreach(Control previousBtn in panelMenu.Controls)
                {
                    if(previousBtn.GetType()==typeof(Button))
                    {
                        previousBtn.BackColor = Color.FromArgb(51, 51, 76);
                        previousBtn.ForeColor = Color.Gainsboro;
                        previousBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
                    }
                }
            }

        private void OpenChildForm(Form childForm, object btnSender)
        {
                if(activeForm != null)
            {
                activeForm.Close();
            }
            ActivateButton(btnSender);
            activeForm = childForm;
            childForm.TopLevel = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;
            this.panelDesktopPanel.Controls.Add(childForm);
            this.panelDesktopPanel.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();
            lblTitle.Text = childForm.Text;
        }

        private void btnGames_Click(object sender, EventArgs e)
        {
            OpenChildForm(new Forms.games(), sender);
        }

        private void btnWindows_Click(object sender, EventArgs e)
        {
            OpenChildForm(new Forms.windows(), sender);
        }

        private void btnApps_Click(object sender, EventArgs e)
        {
            OpenChildForm(new Forms.applications(), sender);
        }

        private void btnStream_Click(object sender, EventArgs e)
        {
            OpenChildForm(new Forms.streaming(), sender);
        }

        private void FormMainMenu_Load(object sender, EventArgs e)
        {
            Console.WriteLine("Application started!");
        }

        private void panelTitleBar_MouseDown(object sender, MouseEventArgs e)
        {
            ReleaseCapture();
            SendMessage(this.Handle, 0x112, 0xf012, 0);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            OpenChildForm(new Forms.settings(), sender);
        }
    }
}
