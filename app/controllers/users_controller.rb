class UsersController < ApplicationController
    # POST /users
    def create
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    # Staying in a session
    def show
        user = User.find_by(id: session[:user_id])
        if user 
          render json: user
        else
          render json: {error: "Not authorized"}, status: :unauthorized
        end
    end

    # GET /users
    def index
        users = User.all
        render json: users, status: :ok
    end

    # GET /users/:id
    def user 
        user = User.find(params[:id])
        render json: user, status: :ok
    end

    # PATCH /users/:id
    def user 
        user = User.find(params[:id])
        user.update!(user_params)
        render json: user, status: :ok
    end

    # Private methods
    private

    def user_params
        params.permit(:name, :phone_number, :password, :password_confirmation)
    end
end