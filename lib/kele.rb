require 'HTTParty'

  class Kele
    include HTTParty

    def initialize(email, password)
      response = self.class.post("https://www.bloc.io/api/v1/sessions", body: { email: email, password: password })
      @auth_token = response['auth_token']
      puts ArgumentError
    end

  end