using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace VS_Agents
{
    public partial class MainWindow : Window
    {
        Agent _agent = new Agent();
        List<Agent> agents = new List<Agent>();
        int skipstack = 0, typestack = 10;
        public MainWindow()
        {
            InitializeComponent();
            lbMain.ItemsSource = user1Entities.GetContext().Agents.ToList();
            lbMain.ItemsSource = user1Entities.GetContext().Agents.OrderBy(x => x.ID_Agent).ToList();
            List<string> vs = new List<string>();
            agents = user1Entities.GetContext().Agents.ToList();
            lbMain.ItemsSource = agents.Take(typestack);
            
            vs.Add("Наименование_Возрастание");
            vs.Add("Наименование_Убывание");
            vs.Add("Скидка_Возрастание");
            vs.Add("Скидка_Убывание");
            vs.Add("Приоритет_Возрастание");
            vs.Add("Приоритет_Убывание");
            ComboF.ItemsSource = vs;
            List<string> vs1 = new List<string>();
            vs1.Add("Все типы");
            vs1.Add("МКК");
            vs1.Add("ЗАО");
            vs1.Add("ОАО");
            vs1.Add("ООО");
            vs1.Add("ПАО");
            vs1.Add("МФО");
            ComboType.ItemsSource = vs1;
        }



        private void Searh_TextChanged(object sender, TextChangedEventArgs e)
        {
            string belfast = Searh.Text;
            if (belfast != "")
            {
                lbMain.ItemsSource = user1Entities.GetContext().Agents.Where(x => x.Name.Contains(belfast)).Take(typestack).ToList();
            }
            else
            {
                lbMain.ItemsSource = user1Entities.GetContext().Agents.OrderBy(x => x.ID_Agent).Take(typestack).ToList();
            }
        }
        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            AddEditWindow addEditWindow = new AddEditWindow(null);
            addEditWindow.ShowDialog();
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            if (lbMain.SelectedItem != null)
            {
                AddEditWindow addEditWindow = new AddEditWindow(lbMain.SelectedItem as Agent);
                addEditWindow.ShowDialog();
            }
            else
                MessageBox.Show("Выберите Агента!");
        }

        private void BtnLeft_Click(object sender, RoutedEventArgs e)
        {
            skipstack += 10;
            if (skipstack < 100)
            {
                agents = user1Entities.GetContext().Agents.OrderBy(x => x.ID_Agent).Skip(skipstack).Take(typestack).ToList();
                lbMain.ItemsSource = agents.Take(typestack);
            }
        }
        private void BtnRight_Click(object sender, RoutedEventArgs e)
        {
            skipstack -= 10;
            if (skipstack < 0)
                skipstack = 0;
            if (skipstack >= 0)
            {
                agents = user1Entities.GetContext().Agents.OrderBy(x => x.ID_Agent).Skip(skipstack).Take(typestack).ToList();
                lbMain.ItemsSource = agents.Take(typestack);
            }

        }

        private void ComboType_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            switch (ComboType.SelectedIndex)
            {
                case 0:
                    lbMain.ItemsSource = user1Entities.GetContext().Agents.ToList();
                    skipstack = 0;
                    break;
                case 1:
                    lbMain.ItemsSource = user1Entities.GetContext().Agents.Where(x => x.Type == 1).ToList();
                    skipstack = 0;
                    break;
                case 2:
                    lbMain.ItemsSource = user1Entities.GetContext().Agents.Where(x => x.Type == 2).ToList();
                    skipstack = 0;
                    break;
                case 3:
                    lbMain.ItemsSource = user1Entities.GetContext().Agents.Where(x => x.Type == 3).ToList();
                    skipstack = 0;
                    break;
                case 4:
                    lbMain.ItemsSource = user1Entities.GetContext().Agents.Where(x => x.Type == 4).ToList();
                    skipstack = 0;
                    break;
                case 5:
                    lbMain.ItemsSource = user1Entities.GetContext().Agents.Where(x => x.Type == 5).ToList();
                    skipstack = 0;
                    break;
                case 6:
                    lbMain.ItemsSource = user1Entities.GetContext().Agents.Where(x => x.Type == 6).ToList();
                    skipstack = 0;
                    break;
            }
        }
        private void ComboF_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            switch (ComboF.SelectedIndex)
            {
                case 0:
                    lbMain.ItemsSource = user1Entities.GetContext().Agents.OrderBy(x => x.Name).ToList();
                    skipstack = 0;
                    break;
                case 1:
                    lbMain.ItemsSource = user1Entities.GetContext().Agents.OrderByDescending(x => x.Name).ToList();
                    skipstack = 0;
                    break;
                case 2:
                    skipstack = 0;
                    break;
                case 3:
                    skipstack = 0;
                    break;
                case 4:
                    lbMain.ItemsSource = user1Entities.GetContext().Agents.OrderBy(x => x.Priority).ToList();
                    skipstack = 0;
                    break;
                case 5:
                    lbMain.ItemsSource = user1Entities.GetContext().Agents.OrderByDescending(x => x.Priority).ToList();
                    skipstack = 0;
                    break;
            }
        }
    }
}
