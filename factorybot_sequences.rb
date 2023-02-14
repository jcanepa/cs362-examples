FactoryBot.define do
  # used when attribute doesnt have default in factory
  # these sequences can be used across model specs (name of attribute works for all so named)
  sequence :email do |n|
    "fake#{n}@factory.com"
  end

  sequence :name do |n|
    "Fake-#{n}"
  end
end
