FactoryBot.define do
  factory :activity do
    name       'Bitches'
    cause      { build(:cause, house: house) }
    supervisor { build(:user, house: house) }

    trait :with_parents do
      house
    end
  end
end
