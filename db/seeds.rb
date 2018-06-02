# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  Councilman.create([{
    name: Faker::Name.name,
    nickname: Faker::GameOfThrones.character,
    political_party: Faker::Name.initials,
    political_position: 1,
  }])
end

5.times do
  Session.create([{
    date: Faker::Date.between(30.days.ago, Date.today),
    start_session: Faker::Time.between(2.days.ago, Date.today, :morning),
    end_session: Faker::Time.between(2.days.ago, Date.today, :afternoon),
    note: Faker::Lorem.paragraph(2),
  }])
end
5.times do
  ProjectKind.create([{
    kind: Faker::Beer.name,
    description: Faker::Lorem.paragraph(1),
  }])
end