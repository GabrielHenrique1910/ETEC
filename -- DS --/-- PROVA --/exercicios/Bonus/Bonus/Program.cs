    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;

    namespace Bonus
    {
        class Program
        {
            static void Main(string[] args)
            {
                int vAnosEmpresa;
                string vAvaliação;
                double vSalario, vBonus;

                Console.Write("Você tem quantos anos de empresa? --> ");
                vAnosEmpresa = int.Parse(Console.ReadLine());

                Console.Write("Você tem que avaliação? --> ");
                vAvaliação = Console.ReadLine();

                Console.Write("Quanto você recebe de salário? --> R$");
                vSalario = double.Parse(Console.ReadLine());

                if (vAnosEmpresa >= 5)
                {
                    if (vAvaliação == "a" || vAvaliação == "A")
                    {
                        vBonus = vSalario + (vSalario * 0.20);
                        Console.WriteLine("Seu salário com bônus acrescidos é de: R$" + vBonus);
                    }
                    else if (vAvaliação == "b" || vAvaliação == "B")
                    {
                        vBonus = vSalario + (vSalario * 0.10);
                        Console.WriteLine("Seu salário com bônus acrescidos é de: R$" + vBonus);
                    }
                    else 
                    {
                        Console.WriteLine("Essa avaliação não dá direito a bônus!");
                    }
           
                } 
                else
                {
                    Console.WriteLine("Você precisa de no mínimo 5 anos de empresa para receber bônus");
                }
                Console.ReadKey();
            }
        }
    }
