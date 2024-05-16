class SecuredPagesController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @user = current_user
    @contents = Content.in(claims: @user.claims)
    if user_signed_in?
      render json: {
        status: {
          code: 200, message: 'authenticated successfully.',
          data: {
            claims: @user.claims,
            contents: @contents,
          }
        }
      }, status: :ok
    else
      render json: {
        status: {
          code: 401, message: 'Not authenticated.'
        }
      }, status: :unauthorized
    end
  end

  def documentation
  end

  def companies
  end
end
