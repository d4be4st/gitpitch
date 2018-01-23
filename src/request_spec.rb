describe '#index' do
  it 'returns success' do
    get '/api/v1/users', headers: some_headers(user)

    expect(response).to have_http_status(:ok)
    expect(response).to match_response_schema('users')
    expect(response_data.size).to eq(3)
  end
end
