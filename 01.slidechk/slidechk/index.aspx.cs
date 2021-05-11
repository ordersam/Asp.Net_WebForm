using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace slidechk
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            bool chkIsChecked = chkswitch.Checked;
            chkswitch.Checked = false;
            Console.WriteLine("IsChecked = ", chkIsChecked);
        }
    }
}