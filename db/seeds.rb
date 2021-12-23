# Must create seed folder for this CC
# Will use Faker for name and address details
# must add "gem "faker"" to Gemfile and rerun bundle install
# take note of seed formatting
# test after by running db:migrate to make sure migrate goes through
# use "rake console" in terminal to open pry and test audition and role with:
# Audition.first.role & Role.first.auditions
puts "creating roles..."

5.times{Role.create(character_name: Faker::Name.name)}

puts "creating auditions..."

25.times{Audition.create(role_id:rand(1..5), 
    actor: Faker::Name.name, 
    location: Faker::Address.city, 
    hired: false, 
    phone: 1111111111
    )}