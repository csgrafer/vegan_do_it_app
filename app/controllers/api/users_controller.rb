class Api::UsersController < ApplicationController

  def index
    @users = User.all
    render 'index.json.jbuilder'
  end

  def show
    @user = User.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      username: params[:username],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @user = User.find(params[:id])
    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.email = params[:email] || @user.email
    @user.phone_number = params[:phone_number] || @user.phone_number
    @user.username = params[:username] || @user.username
    if params[:password]
      @user.password = params[:password]
      @user.password_confirmation = params[:password_confirmation]
    end

    if @user.save
      render json: {message: 'User updated successfully.'}, status: :ok
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end
