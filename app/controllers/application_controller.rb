class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
    def find_group_and_check_permission
      @group = Group.find(params[:id])

      if current_user != @group.user
        redirect_to root_path, alert: "You have no permission."
      end
    end

    def group_params
      params.require(:group).permit(:title,:description)
    end
end
