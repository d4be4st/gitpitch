FactoryBot.define do
  factory :activity do
    name       'Bitches'
    cause      { build(:cause, house: house) }
    supervisor { build(:user, house: house) }
    house
  end
end
