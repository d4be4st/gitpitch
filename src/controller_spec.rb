describe '#index' do
  it 'returns success' do
    get :index

    expect(response).to have_http_status(:ok)
  end
end

# rails_helper.rb

config.render_views

