# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Monument.destroy_all

attributes = [
  {
    name: "Eiffel tower", address: "Champ de Mars, 5 Av. Anatole France, 75007 Paris", opening_date: "1889/03/31"
  },
  {
    name: "Statue of Liberty", address: "New York, État de New York 10004, États-Unis", opening_date: "1886/10/28"
  }
]

attributes.each do |attribute|
  Monument.create(attribute)
end
