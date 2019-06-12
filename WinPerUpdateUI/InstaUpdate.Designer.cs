namespace WinPerUpdateUI
{
    partial class InstaUpdate
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
            this.label1 = new System.Windows.Forms.Label();
            this.BtnValidar = new System.Windows.Forms.Button();
            this.cmbPerfil = new System.Windows.Forms.ComboBox();
            this.bwCopia = new System.ComponentModel.BackgroundWorker();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(49, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(119, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Selecciones Ambiente";
            // 
            // BtnValidar
            // 
            this.BtnValidar.Location = new System.Drawing.Point(75, 98);
            this.BtnValidar.Name = "BtnValidar";
            this.BtnValidar.Size = new System.Drawing.Size(64, 30);
            this.BtnValidar.TabIndex = 4;
            this.BtnValidar.Text = "Aceptar";
            this.BtnValidar.UseVisualStyleBackColor = true;
            this.BtnValidar.Click += new System.EventHandler(this.BtnValidar_Click);
            // 
            // bwCopia
            // 
            this.bwCopia.WorkerReportsProgress = true;
            this.bwCopia.DoWork += new System.ComponentModel.DoWorkEventHandler(this.bwCopia_DoWork);
            this.bwCopia.ProgressChanged += new System.ComponentModel.ProgressChangedEventHandler(this.bwCopia_ProgressChanged);
            this.bwCopia.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.bwCopia_RunWorkerCompleted);
            // 
            // cmbPerfil
            // 
            this.cmbPerfil.FormattingEnabled = true;
            this.cmbPerfil.Items.AddRange(new object[0]);
            this.cmbPerfil.Location = new System.Drawing.Point(10, 50);
            this.cmbPerfil.Name = "cmbPerfil";
            this.cmbPerfil.Size = new System.Drawing.Size(196, 21);
            this.cmbPerfil.TabIndex = 6;
            // 
            // InstaUpdate
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(218, 140);
            this.Controls.Add(this.BtnValidar);
            this.Controls.Add(this.cmbPerfil);
            this.Controls.Add(this.label1);
            this.Name = "InstaUpdate";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Ambiente";
            this.Load += new System.EventHandler(this.instaupdate_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.ComboBox cmbPerfil;

        private System.Windows.Forms.Label label1;
        private System.ComponentModel.BackgroundWorker bwCopia;
        private System.Windows.Forms.Button BtnValidar;

    }
}