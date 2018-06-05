# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

s1 = Date.parse("2018/07/01")
s2 = Date.parse("2018/10/01")
status = %w[untouched started completion]
priority = %w[normal high low]

100.times do
  ActiveRecord::Base.transaction do
    Task.create(
        name: Faker::Coffee.blend_name,
        body: Faker::Coffee.notes,
        limits: Random.rand(s1..s2),
        status: status[rand(3)],
        priority: priority[rand(3)]
    )
  end
end