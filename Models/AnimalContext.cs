using Microsoft.EntityFrameworkCore;

namespace postgrestest2.Models
{
    public class AnimalContext : DbContext
    {
        public AnimalContext(DbContextOptions<AnimalContext> options) : base(options)
        {}

        public DbSet<Animal> Animals {get; set;}

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Animal>()
                        .HasData(
                            new Animal() {AnimalId = 1, Name = "Frog", Heigth = 3},
                            new Animal() {AnimalId = 2, Name = "Kangaroo", Heigth = 23}
                        );
        }
    }
}