# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:username) { |n| "user-#{n}" }
    sequence(:email) { |n| "user-#{n}@email" }
    password { '123456' }
  end
end
