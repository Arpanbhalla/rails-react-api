module Api::V1
  class UsersController < ApiController
    before_action :set_user, only: [:show, :update, :destroy]

    # GET /v1/users
    def index
      users = User.all
      render json: {status: 'SUCCESS',
                   message: 'Loaded all users',
                   data: users},
                   status: :ok
    end

    def create
      render json: {status: 'SUCCESS',
                   message: 'Loaded all users',
                   data: User.create(user_params)},
                   status: :ok
    end

    def show
      render json: {status: 'SUCCESS',
                   message: 'Loaded all users',
                   data: @user},
                   status: :ok
    end

    def update
      @user.update(user_params)
      head :no_content
    end

    def destroy
      if @user.destroy
        redirect_to v1_users_path
      end
      head :no_content
    end

    private

    def user_params
      # whitelist params
      params.require(:user).permit(:name, :password, :sex, :age)
    end

    def set_user
      @user = User.find(params[:id])
    end

  end
end
