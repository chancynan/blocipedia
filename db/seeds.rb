require 'faker'

10.times do
  Wiki.create!(
    title: Faker::Lorem.words,
    body: Faker::Lorem.sentences,
    private: [true, false].sample
  )
end

puts "Seed finished"
puts "#{Wiki.count} wikis created"
