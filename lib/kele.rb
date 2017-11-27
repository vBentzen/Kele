require 'HTTParty'

  class Kele
    include HTTParty
    base_uri 'https://www.bloc.io/api/v1'
    debug_output

    def initialize(email, password)
      response = self.class.post('/sessions', body: { email: email, password: password })
      @auth_token = response['auth_token']
      if response.nil? || response['auth_token'].nil?
         raise ArgumentError.new("The system was unable to authorize you.")
      end
    end
  end