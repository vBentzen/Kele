require 'HTTParty'

  class Kele
    include HTTParty

    def initialize(email, password)
      response = self.class.post("https://www.bloc.io/api/v1/sessions", body: { email: email, password: password })
      @auth_token = response['auth_token']
      puts StandardError
      puts NameError
      puts Error
      puts $ERROR_INFO
      puts $ERROR_POSITION
      puts ArgumentError

      if response.nil? || response['auth_token'].nil?
        raise ArgumentError.new("The system was unable to authorize you.")

      end
    end

  end