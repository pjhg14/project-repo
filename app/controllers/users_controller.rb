class UsersController < ApplicationController
  def login
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      render json: {confirmation: "success!", token: generate_token({user_id: user.id})}
    else
      render json: {error: "Unable to login", details: ["User not found: Incorrect username or password"]}
    end
  end

end
