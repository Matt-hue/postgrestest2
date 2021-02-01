namespace postgrestest2.Models
{
    public class Animal
    {
        public Animal()
        {
        }
        public Animal(string name, int heigth)
        {
            Name = name;
            Heigth = heigth;
        }

        public int AnimalId {get; set;}
        public string Name {get; set;}
        public int Heigth {get; set;}
    }
}