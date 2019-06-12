namespace Instalador
{
    partial class Form2
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form2));
            this.PbProgreso = new System.Windows.Forms.ProgressBar();
            this.LblPorcentaje = new System.Windows.Forms.Label();
            this.LblTime = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // PbProgreso
            // 
            this.PbProgreso.Location = new System.Drawing.Point(12, 25);
            this.PbProgreso.Name = "PbProgreso";
            this.PbProgreso.Size = new System.Drawing.Size(540, 36);
            this.PbProgreso.TabIndex = 0;
            // 
            // LblPorcentaje
            // 
            this.LblPorcentaje.AutoSize = true;
            this.LblPorcentaje.Location = new System.Drawing.Point(12, 9);
            this.LblPorcentaje.Name = "LblPorcentaje";
            this.LblPorcentaje.Size = new System.Drawing.Size(24, 13);
            this.LblPorcentaje.TabIndex = 1;
            this.LblPorcentaje.Text = "0/0";
            //
            //Lbltime
            //
            this.LblTime.AutoSize = true;
            this.LblTime.Location = new System.Drawing.Point(85, 9);
            this.LblTime.Name = "LblTime";
            this.LblTime.Size = new System.Drawing.Size(24, 13);
            this.LblTime.TabIndex = 2;
            this.LblTime.Text = "Tiempo Transcurrido: 000";

            // 
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(564, 84);
            this.ControlBox = false;
            this.Controls.Add(this.LblPorcentaje);
            this.Controls.Add(this.PbProgreso);
            this.Controls.Add(this.LblTime);
            //this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Form2";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Progreso";
            this.Load += new System.EventHandler(this.Form2_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public System.Windows.Forms.ProgressBar PbProgreso;
        public System.Windows.Forms.Label LblPorcentaje;
        public System.Windows.Forms.FormClosingEventHandler Cerrar;
        public System.Windows.Forms.Label LblTime;

    }
}