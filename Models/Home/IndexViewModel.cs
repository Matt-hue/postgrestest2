using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace postgrestest2.Models.Home
{
    public class IndexViewModel
    {
        public IndexViewModel(List<Animal> animals)
        {
            Animals = animals;
        }

        public IndexViewModel()
        {
        }
        public string Name { get; set; }
        public int Heigth { get; set; }

        public List<Animal> Animals { get; set; }
    }
}
