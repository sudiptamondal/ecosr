class UserLoginController < ApplicationController
  def login
    @email = params[:email]
    @password = params[:password]

    @check = NgOrg.where(email: @email)

    if @check.blank?
      @check = User.where(email: @email)
      if @check.blank?
        @type = "data"
        @result ="false"
      else
        @type = "User"
        @result = true
      end
    else
      @type = "NGO"
      @result = "true"
    end


    @data = "#{params[:callback]}({#{@type}:#{@result},id:#{@check.first.id}})"

    respond_to do |format|
      format.html # index.html.erb
      format.json { render text: @data }
    end

  end

  def signup

    @user = User.new(JSON.parse(params[:data]))

    if @user.save!
      @data = "#{params[:callback]}({Saved:true})"
    else
      @data = "#{params[:callback]}({Saved:false})"
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render text: @data }
    end
  end





end
