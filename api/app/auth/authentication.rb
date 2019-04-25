class Authentication
    def def initialize(user_object)
      @username = user_object[:username]
      @password = user_object[:password]
      @user = User.find_by(username: @username)
    end

    def authenticate
        @user && @user.authenticate(@password)
    end

    def generate_token
        JsonWebToken.encode(user_id: @user_id)
    end
end