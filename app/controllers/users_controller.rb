class UsersController < InheritedResources::Base
  actions :all, except: [:index]

  private

    def user_params
      params.require(:user).permit(:name, :image, :email)
    end
end

