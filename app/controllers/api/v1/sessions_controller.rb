    def create
        byebug 
        @user = User.find_by(username: params[:session][:username])
    
        if @user && @user.authenticate(params[:session][:password])
          session[:user_id] = @user.id
          render json: UserSerializer.new(@user), status: :ok
        else
          render json: {
            error: "Invalid Credentials"
          }
        end
    end
