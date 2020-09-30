using System;
using System.Data;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            switch (b.Text)
            {
                case "x":
                    TextBox1.Text = TextBox1.Text + b.Text.Replace("x", "*");
                    break;
                case ":":
                    TextBox1.Text = TextBox1.Text + b.Text.Replace(":", "/");
                    break;
                default:
                    TextBox1.Text = TextBox1.Text + b.Text;
                    break;
            }
        }

        protected void Equal_Click(object sender, EventArgs e)
        {
            var val = TextBox1.Text;
            var calc = Evaluate(val);
            TextBox1.Text = null;
            TextBox1.Text = calc.ToString();
        }

        protected static dynamic Evaluate(string expression)
        {
            try
            {
                DataTable table = new DataTable();
                table.Columns.Add("expression", string.Empty.GetType(), expression);
                DataRow row = table.NewRow();
                table.Rows.Add(row);
                return double.Parse((string)row["expression"]);
            }
            catch (SyntaxErrorException)
            {
                return "syntax error";
            }
            catch (InvalidCastException)
            {
                return "no input";
            }
        }

        protected void Button_ClearEntry(object sender, EventArgs e)
        {
            try
            {
                string[] results = Regex.Split(TextBox1.Text, @"-|\+|\*|\/");
                var lastIndex = results.Length - 1;
                var lastInput = results[lastIndex];

                TextBox1.Text = TextBox1.Text.Replace(lastInput, null);
            }
            catch (Exception)
            {

                TextBox1.Text = null;
            }
        }

        protected void Button_Clear(object sender, EventArgs e)
        {
            TextBox1.Text = null;
        }
    }
}