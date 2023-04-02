class RegistrationsController < ApplicationController
  def new
      @user = User.new
  end

  def create
      @user = User.new(user_params)
      if @user.save
          session[:user_id] = @user.id
          redirect_to root_path, notice: "Successfully created account"

      else
          render :new
      end
  end

  private

  def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
  end
end


#La méthode "new" initialise un nouvel utilisateur, tandis que la méthode "create" enregistre un nouvel utilisateur avec les paramètres fournis.
#La méthode privée "user_params" utilise strong parameters pour filtrer les paramètres de l'utilisateur qui sont autorisés à
#être transmis dans la requête.
