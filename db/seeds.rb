# db/seeds.rb

require 'faker'

# Limpa os registros existentes no banco de dados antes de popular
Course.destroy_all

# Cria 10 cursos fictícios
10.times do
  Course.create!(
    name: Faker::Educator.course_name,
    description: Faker::Lorem.paragraph,
    duration: Faker::Number.between(from: 1, to: 52), # semanas
    price: Faker::Commerce.price(range: 100.0..1000.0)
  )
end

puts "10 cursos criados com sucesso!"
