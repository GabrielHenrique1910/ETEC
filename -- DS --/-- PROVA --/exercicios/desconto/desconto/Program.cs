using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace desconto
{
    class Program
    {
        static void Main(string[] args)
        {
            double vValorCompra, vValorDesconto;

            Console.Write("Insira aqui o valor de sua compra --> R$");
            vValorCompra = double.Parse(Console.ReadLine());

            if (vValorCompra > 100)
            {
                vValorDesconto = vValorCompra - (vValorCompra * 0.10);
                Console.WriteLine("O valor final de sua compra é de R$" + vValorDesconto);
            }
            else
            {
                Console.WriteLine("O valor final de sua compra é de R$" + vValorCompra);
            }
            Console.ReadKey();
        }
    }
}
