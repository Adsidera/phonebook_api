require 'rails_helper'

RSpec.describe JsonWebToken do
  let(:email) { "ciccio@email.it"}
  let(:password) { Faker::Internet.password }
  let(:payload) { { email: email, password: password } }

  it 'encodes a token' do
    binding.pry
    token = JsonWebToken.encode(payload)
    expect(token).not_to be_empty
  end

  it 'decodes a token' do
    token = JsonWebToken.encode(payload)
    decoded_token = JsonWebToken.decode(token)
    expect(decoded_token).not_to be_empty
    expect(decoded_token[0]["email"]).to eq(email)
  end
end
