using System;
using System.Data;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace CakeConf
{
    public partial class Form1 : Form
    {            
        // Создаем объекты Dataset
        DataTable dKorji = new DataTable();
        DataTable dKrema = new DataTable();
        DataTable dNachinki = new DataTable();
        DataTable dUkrashenia = new DataTable();
        DataTable dUpakovki = new DataTable();
        DataTable dLenty = new DataTable();
        public Form1()
        {
            InitializeComponent();
            string[] tabl = { "Korji", "Krema", "Nachinki", "Ukrashenia", "Upakovki", "Lenty" };            
            string connectionString = "Data Source=DESKTOP-M3KDQKK;Initial Catalog=cakes;Integrated Security=True";
            Select(tabl[0], dKorji);
            comboBox1.DataSource = dKorji;
            comboBox1.DisplayMember = "Name";// столбец для отображения
            comboBox1.ValueMember = "ID";//столбец с id
            Select(tabl[1], dKrema);
            comboBox2.DataSource = dKrema;
            comboBox2.DisplayMember = "Name";// столбец для отображения
            comboBox2.ValueMember = "ID";//столбец с id
            Select(tabl[2], dNachinki);
            checkedListBox1.DataSource = dNachinki;
            checkedListBox1.DisplayMember = "Name";// столбец для отображения
            checkedListBox1.ValueMember = "ID";//столбец с id
            Select(tabl[3], dUkrashenia);
            checkedListBox2.DataSource = dUkrashenia;
            checkedListBox2.DisplayMember = "Name";// столбец для отображения
            checkedListBox2.ValueMember = "ID";//столбец с id
            Select(tabl[4], dUpakovki);
            Select(tabl[5], dLenty);
            void Select(string t, DataTable ds)
            {
                string sql = @"SELECT * FROM "+ t;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    // Создаем объект DataAdapter
                    SqlDataAdapter adapter = new SqlDataAdapter(sql, connection);
                    // Заполняем Dataset
                    adapter.Fill(ds);
                }
            }
        }
        public void Refreshing()
        {
            int iKorj = comboBox1.SelectedIndex;
            string idKorjName = Convert.ToString(dKorji.Rows[iKorj][0]);
            string Naimenovanie = Convert.ToString(numericUpDown1.Value) + idKorjName;
            string idKorjVes = dKorji.Rows[iKorj][4].ToString();
            double ast = Convert.ToDouble(numericUpDown1.Value) * Convert.ToDouble(idKorjVes);
            string idKorjPrice = dKorji.Rows[iKorj][5].ToString();
            double ast2 = Convert.ToDouble(numericUpDown1.Value) * Convert.ToDouble(idKorjPrice);
            int iKream = comboBox2.SelectedIndex;
            string idKreamName = dKrema.Rows[iKream][0].ToString();
            Naimenovanie += "|"+idKreamName;
            double idKreamVes = Convert.ToDouble(dKrema.Rows[iKream][4]);
            ast += Convert.ToDouble(idKreamVes);
            textBox1.Text = Convert.ToString(ast);
            double idKreamPrice = Convert.ToDouble(dKrema.Rows[iKream][5]);
            ast2 += idKreamVes * Convert.ToDouble(idKreamPrice);
            textBox2.Text = Convert.ToString(ast2);
            foreach (int iNachinka in checkedListBox1.CheckedIndices)
            {
                string idNachinkaName = dNachinki.Rows[iNachinka][0].ToString();
                Naimenovanie += "|" + idNachinkaName;
                double idNachinkaVes = Convert.ToDouble(dNachinki.Rows[iNachinka][4]);
                ast += Convert.ToDouble(idNachinkaVes);
                double idNachinkaPrice = Convert.ToDouble(dNachinki.Rows[iNachinka][5]);
                ast2 += idNachinkaVes * idNachinkaPrice;
            }
            foreach (int iUkrashenie in checkedListBox2.CheckedIndices)
            {
                string idUkrashenieName = dUkrashenia.Rows[iUkrashenie][0].ToString();
                Naimenovanie += "|" + idUkrashenieName;
                double idUkrashenieVes = Convert.ToDouble(dUkrashenia.Rows[iUkrashenie][4]);
                ast += Convert.ToDouble(idUkrashenieVes);
                double idUkrasheniePrice = Convert.ToDouble(dUkrashenia.Rows[iUkrashenie][5]);
                ast2 += idUkrasheniePrice;
            }
            textBox1.Text = Convert.ToString(ast);
            textBox2.Text = Convert.ToString(ast2);
            textBox3.Text = Naimenovanie;
            
            //dataGridView1.DataSource = dUpakovki;
            Console.WriteLine(dUpakovki.Rows.Count);
            //if (radioButton1.Checked == true)
            //{
            //    Console.WriteLine(Convert.ToDouble(dUpakovki.Rows[0][0]));
                //var salo = dUpakovki.Rows[0][0];
                //gf = ;
                //    //ast2 += gf;
            //}
           // else ast2 += Convert.ToDouble(dUpakovki.Rows[2][5]);
            //int gh = 5;
        }
        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {
                    
        }

        private void Save_Click(object sender, EventArgs e)
        {
            if (checkedListBox2.GetItemChecked(1) == true && checkedListBox2.GetItemChecked(3) == true)
            {
                errorProvider1.SetError(button4, "Невозможно сохранить. Вишня и марципан не могут одновременно украшать торт!");
            }
            else
            {
                XDocument xdoc = new XDocument();
                // создаем первый элемент
                XElement Korj = new XElement("Korj");
                // создаем атрибут
                int iKorj = comboBox1.SelectedIndex;
                string idKorjType = Convert.ToString(dKorji.Rows[iKorj][2]);
                string idKorjName = Convert.ToString(dKorji.Rows[iKorj][1]);
                XAttribute KorjTypeAttr = new XAttribute("Type", ""+ idKorjType);
                XElement KorjNameElem = new XElement("Name", ""+idKorjName);
                // добавляем атрибут и элементы в первый элемент
                Korj.Add(KorjTypeAttr);
                Korj.Add(KorjNameElem);

                // создаем второй элемент
                XElement Kream = new XElement("Kream");
                // создаем атрибут
                int iKream = comboBox1.SelectedIndex;
                string idKreamType = Convert.ToString(dKrema.Rows[iKream][2]);
                string idKreamName = Convert.ToString(dKrema.Rows[iKream][1]);
                XAttribute KreamTypeAttr = new XAttribute("Type", "" + idKreamType);
                XElement KreamNameElem = new XElement("Name", "" + idKreamName);
                // добавляем атрибут и элементы в первый элемент
                Kream.Add(KreamTypeAttr);
                Kream.Add(KreamNameElem);
                foreach (int iNachinka in checkedListBox1.CheckedIndices)
                {
                    string idNachinkaName = dNachinki.Rows[iNachinka][0].ToString();
                    double idNachinkaVes = Convert.ToDouble(dNachinki.Rows[iNachinka][4]);
                    double idNachinkaPrice = Convert.ToDouble(dNachinki.Rows[iNachinka][5]);
                }
                // создаем корневой элемент
                XElement Cake = new XElement("Cake");
                // добавляем в корневой элемент
                Cake.Add(Korj);
                Cake.Add(Kream);
                // добавляем корневой элемент в документ
                xdoc.Add(Cake);
                //сохраняем документ
                xdoc.Save(textBox3.Text.Replace("|", "") + ".xml");
                Clean();
            }
        }

        private void Chockolate_Click(object sender, EventArgs e)
        {
            Clean();
            comboBox1.SelectedIndex = 0;
            numericUpDown1.Value = 3;
            comboBox2.SelectedIndex = 1;
            checkedListBox1.SetItemChecked(3, true);
            checkedListBox2.SetItemChecked(2, true);
            Refreshing();
        }
        public void Clean()
        {
            comboBox1.SelectedIndex = 0;
            numericUpDown1.Value = 1;
            comboBox2.SelectedIndex = 0;
            checkedListBox1.SetItemChecked(0, false);
            checkedListBox1.SetItemChecked(1, false);
            checkedListBox1.SetItemChecked(2, false);
            checkedListBox1.SetItemChecked(3, false);
            checkedListBox2.SetItemChecked(0, false);
            checkedListBox2.SetItemChecked(1, false);
            checkedListBox2.SetItemChecked(2, false);
            checkedListBox2.SetItemChecked(3, false);
            checkedListBox2.SetItemChecked(4, false);
            radioButton1.Checked = true;
            radioButton4.Checked = true;
        }
        private void NewCake_Click(object sender, EventArgs e)
        {
            Clean();
            Refreshing();
        }
        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void label11_Click(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void checkedListBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Refreshing();
            if (checkedListBox2.GetItemChecked(1) == true && checkedListBox2.GetItemChecked(3)==true)
            {
                errorProvider1.SetError(checkedListBox2, "Вишня и марципан не могут одновременно украшать торт!");
            }
            else
                errorProvider1.Clear();
        }

        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {
            Refreshing();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Refreshing();
        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Refreshing();
        }

        private void checkedListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Refreshing();
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            Refreshing();
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            Refreshing();
        }

        private void radioButton4_CheckedChanged(object sender, EventArgs e)
        {
            Refreshing();
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            Refreshing();
        }
    }
}
