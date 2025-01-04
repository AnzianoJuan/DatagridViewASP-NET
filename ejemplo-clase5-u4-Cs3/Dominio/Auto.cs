using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Auto
    {
        public int Id { get; set; }

        public string Modelo { get; set; }

        public string Descripcion { get; set; }

        public string Color { get; set; }

        public DateTime Fecha { get; set; }

        public bool Usado { get; set; }

        public bool Importado { get; set; }
    }

    public class AutoNegocio
    {
        public List<Auto> listar()
        {

            List<Auto> listaDeAutos = new List<Auto>();

            listaDeAutos.Add(new Auto());
            listaDeAutos.Add(new Auto());

            listaDeAutos[0].Id = 1;
            listaDeAutos[0].Modelo = "Ferrari";
            listaDeAutos[0].Descripcion = "EL tano nro1";
            listaDeAutos[0].Color = "Rojo";
            listaDeAutos[0].Fecha = DateTime.Now;
            listaDeAutos[0].Usado = true;
            listaDeAutos[0].Importado = true;


            listaDeAutos[1].Id = 2;
            listaDeAutos[1].Modelo = "Golf";
            listaDeAutos[1].Descripcion = "EL de ordi";
            listaDeAutos[1].Color = "Negro";
            listaDeAutos[1].Fecha = DateTime.Now;
            listaDeAutos[1].Usado = true;
            listaDeAutos[1].Importado = true;

            return listaDeAutos;

        }

    }
}
