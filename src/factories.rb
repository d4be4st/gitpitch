# factories/activity.rb

FactoryBot.define do
  factory :activity do
    name              'Bitches'
    kind              { ActivityKind.event.to_sym }
    description       'Description'
    held_at           { Time.zone.today }
    reward_exp_points 100
    reward_badge      'badge'
    address           'Address'
    longitude         '12.32424'
    latitude          '12.324242'
    cause { build(:cause, house: house) }

    trait :with_parents do
      house
      supervisor { build(:user, house: house) }
    end
  end
end

# activity_controller_spec.rb

Rspec.describe V1::ActivitiesController do
  let(:house) { create(:house) }
  let(:user) { create(:user, house: house, role: :admin) }

  describe '#index' do
    include Dox::V1::Activities::Index

    it 'Returns a list of activities', :dox do
      create_list(:activity, 3, house: house, supervisor: user)
      create(:activity, house: create(:house), supervisor: create(:user))

      get '/v1/activities', headers: authentication_headers(user)

      expect(response).to be_success
      expect(response).to match_response_schema('activities')
      expect(parsed_response['data'].count).to eq(3)
    end
  end
end
