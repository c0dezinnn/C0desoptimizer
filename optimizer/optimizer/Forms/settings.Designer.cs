namespace optimizer.Forms
{
    partial class settings
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.chkStartup = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // chkStartup
            // 
            this.chkStartup.AutoSize = true;
            this.chkStartup.BackColor = System.Drawing.Color.Black;
            this.chkStartup.Cursor = System.Windows.Forms.Cursors.Hand;
            this.chkStartup.FlatAppearance.BorderSize = 0;
            this.chkStartup.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.chkStartup.ForeColor = System.Drawing.Color.Transparent;
            this.chkStartup.Location = new System.Drawing.Point(98, 31);
            this.chkStartup.Name = "chkStartup";
            this.chkStartup.Size = new System.Drawing.Size(105, 19);
            this.chkStartup.TabIndex = 0;
            this.chkStartup.Text = "Open in startup";
            this.chkStartup.UseVisualStyleBackColor = false;
            this.chkStartup.CheckedChanged += new System.EventHandler(this.chkStartup_CheckedChanged);
            // 
            // settings
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.chkStartup);
            this.Name = "settings";
            this.Text = "Settings";
            this.Load += new System.EventHandler(this.settings_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CheckBox chkStartup;
    }
}