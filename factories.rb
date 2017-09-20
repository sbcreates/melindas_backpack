require 'factory_girl'

FactoryGirl.define do
  factory :backpack do
    # initializer can behave like a rails model
    initialize_with { new(attributes) }
  end
end
