class RolesController < ApplicationController
  before_action :authenticate_user!, only: [:edit]

  def new
    @user = User.new
    render layout: false
  end

  def create
    case params[:role]
    when "manager"
      resource = Manager.create(user_params)
    when "cashier"
      resource = Cashier.create(user_params)
    when "baker"
      resource = Baker.create(user_params)
    end

    if resource.errors.any?
      flash[:error] = resource.errors.full_messages.to_sentence
    else
      flash[:notice] = "#{params[:role]} registered successfully."
    end

    redirect_to authenticated_root_path
  end

  def update
    current_user.update(user_params)

    if current_user.errors.any?
      flash[:alert] = current_user.errors.full_messages.to_sentence
      render :edit
    else
      flash[:success] = "Your profile updated successfully."
      sign_in(current_user, :bypass => true)
      redirect_to dashboard_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :role, :password, :password_confirmation)
  end

end
