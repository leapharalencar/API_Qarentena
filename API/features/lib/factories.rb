require 'faker'
require_relative '../models/users_models'

def sort_id
    user_file = YAML.load_file('features/support/massa/user.yml')
    ids = "#{user_file['ids']}"
    ids = ids.split(",")
    ids = ids[rand(1...ids.length)]
    ids
end

FactoryBot.define do
    factory :user, class: UsersModel do
        id { Faker::Number.number(digits: 2) }
        user_name {Faker::Name.name}
        password { 123456 }
    end
end
