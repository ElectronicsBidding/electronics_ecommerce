require 'jwt'
class UsersController < ApplicationController
  include Common

  def sign_in
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      token = JWT.encode({ user_id: user.id, user_email: user.email, user_name: user.full_name }, nil)
      render json: { success: true, jwt: token }
    else
      render json: { success: false, errors: ['Invalid username or password !'] }
    end
  end
  private
    def model_params
      params.require(:payload).permit(:full_name, :phone_number, :email, :image, :password, :password_confirmation)
    end
end
