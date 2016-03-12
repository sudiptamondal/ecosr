class UserController < ApplicationController
  def create
    @user = User.new(
      email: params[:email],
      password: params[:password],
      first_name: params[:first_name],
      last_name: params[:last_name],
      city: params[:city],
      state: params[:state],
      country: params[:country],
      contact_number: params[:subscribe_me]
      )
    if @user.save!
      respond_to do |format|
        format.json {"user_save_true"}
      end
    else
    respond_to do |format|
        format.json {"user_save_false"}
      end
    end
  end

  def update
  end

  def delete
  end

  def show
  end
end
