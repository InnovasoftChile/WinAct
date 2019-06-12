using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading;
using System.Windows.Forms;

namespace WinPerUpdateUI
{
    static class Program
    {
        private static Mutex mutex = null;
        [STAThread]
        static void Main()
        {
            bool createdNew;
            mutex = new Mutex(true, "Instalador", out createdNew);
            if (!createdNew)
            {
                return;
            }
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new FormPrincipal());
            
        }
        
    }
}
