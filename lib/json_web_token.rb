# frozen_literal_string: true

require 'jwt'

module JsonWebToken
  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, api_secret, alg)
  end

  def self.decode(token)
    body = JWT.decode(token, api_secret)[0]
    HashWithIndifferentAccess.new body
  end

  def self.api_secret
    Rails.application.credentials.api_secret
  end

  def self.alg
    'HS256'
  end
end
