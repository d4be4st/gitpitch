let(:house) { create(:house) }
let(:user) { create(:user, house: house, role: :admin) }
let(:superadmin) { create(:user, role: :superadmin) }

describe '#index' do
  it 'Returns a list of users', :dox do
    create_list(:user, 2, house: house) # users_in_my_house

    get '/v1/users', headers: authentication_headers(user)

    expect(response).to be_success
    expect(response).to match_response_schema('users')
    expect(response_data.size).to eq(2 + 1) # users_in_my_house + me
  end
end
