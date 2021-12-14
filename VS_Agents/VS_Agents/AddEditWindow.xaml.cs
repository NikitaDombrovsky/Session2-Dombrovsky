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
using System.Windows.Shapes;

namespace VS_Agents
{
    /// <summary>
    /// Логика взаимодействия для AddEditWindow.xaml
    /// </summary>
    public partial class AddEditWindow : Window
    {
        Agent _agent = new Agent();
        List<Agent> agents = new List<Agent>();
        
        public AddEditWindow(Agent _selectedagent)
        {
            InitializeComponent();
            if (_selectedagent != null)
            {
                _agent = _selectedagent;
                BtnDel.IsEnabled = true;
            }
            DataContext = _agent;
            ComboTypeAdd.ItemsSource = user1Entities.GetContext().TypeAgents.ToList();
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            //if (string)

            user1Entities.GetContext().Agents.Add(_agent);
            user1Entities.GetContext().SaveChanges();
            //user1Entities.GetContext().Agents.Add(_agent);
            //DataContext = user1Entities.GetContext().Agents.Add(_agent);

            this.Close();

            //MainWindow main = new MainWindow();

            //main.lbMain.ItemsSource = user1Entities.GetContext().Agents.Add(_agent);
            //lbMain.ItemsSource = user1Entities.GetContext().Agents.OrderBy(x => x.ID_Agent).Take(typestack).ToList();
        }

        private void BtnSpell_Click(object sender, RoutedEventArgs e)
        {
            // _agent = user1Entities.GetContext().Agents.ToList().SaveChanged();
            user1Entities.GetContext().SaveChanges();
            this.Close();
        }

        private void BtnDel_Click(object sender, RoutedEventArgs e)
        {
            if(MessageBox.Show("Вы точно хотите удалить этого агента?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Warning, MessageBoxResult.No) == MessageBoxResult.Yes)
            {
                user1Entities.GetContext().Agents.Remove(_agent);
                user1Entities.GetContext().SaveChanges();
            }
        }
    }
}
