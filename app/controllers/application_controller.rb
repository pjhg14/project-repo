class ApplicationController < ActionController::API
  def generate_token
    JWT.encode(payload, "insert_new_secret_here")
  end

  def logged_in?
    begin
      token = request.headers["Authorization"].split(" ")[1]
      user_id = JWT.decode(token, "insert_new_secret_here")[0]["user_id"]
            
      @user = User.find(user_id)
    rescue 
      @user = nil
    end

    render json: {
      error: "Please login to access user data", 
      details: "Something went wrong with login data, please login and try again"
    } unless @user
  end

end
