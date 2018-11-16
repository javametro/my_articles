using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Automation;

namespace Controller
{
    class Program
    {
        static void Main(string[] args)
        {
            AutomationElement ae_form = GetWindowByName(AutomationElement.RootElement, "Form1");
            AutomationElement ae_msgbox = GetWindowByName(ae_form, "TestButton");
            AutomationElement ae_msgbox_ok = GetElementById(ae_msgbox, "2", ControlType.Button);

           
            string automationId = ae_msgbox_ok.Current.AutomationId;
            Console.WriteLine("ok button's automation id:{0}", automationId);
            Console.ReadKey();

            InvokePattern click = (InvokePattern)ae_msgbox_ok.GetCurrentPattern(InvokePattern.Pattern);
            click.Invoke();

        }

        public static AutomationElement GetWindowByName(AutomationElement parent, string name)
        {
            if (parent == null)
            {
                throw new Exception("Parent element is null");
            }

            PropertyCondition nameProperty = new PropertyCondition(AutomationElement.NameProperty, name);
            PropertyCondition typeProperty = new PropertyCondition(AutomationElement.ControlTypeProperty, ControlType.Window);
            AndCondition andCondition = new AndCondition(nameProperty, typeProperty);
            return parent.FindFirst(TreeScope.Descendants | TreeScope.Element, andCondition);
        }

        public static AutomationElement GetElementById(AutomationElement parentElement, string id, ControlType ctrlType)
        {
            if(parentElement == null)
            {
                throw new Exception("Parent element is null.");
            }

            PropertyCondition idProperty = new PropertyCondition(AutomationElement.AutomationIdProperty, id);
            PropertyCondition typeProperty = new PropertyCondition(AutomationElement.ControlTypeProperty, ctrlType);
            AndCondition andCondition = new AndCondition(idProperty, typeProperty);
            return parentElement.FindFirst(TreeScope.Descendants | TreeScope.Element, andCondition);
        }
    }
}
