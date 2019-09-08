Fabricator(:contact) do
  name { "#{Faker::Name.first_name} #{Faker::Name.last_name}" }
  phone { Faker::PhoneNumber.phone_number_with_country_code }
  user { Fabricate(:user) }
end