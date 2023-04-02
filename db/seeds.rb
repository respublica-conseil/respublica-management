# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Mission.all.each do |mission|
  mission.consultants.each do |consultant_name|
    Charge.create(mission_reference: mission.mission_reference, consultant_full_name: consultant_name)
  end
end