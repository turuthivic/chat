class RegistrationsController < Devise::RegistrationsController
private

	def sign_up_params
		params.require(:user).permit(:email, :first_name, :second_name, :username)
	end

	def account_update_params
		params.require(:user).permit(:email, :first_name, :second_name, :username)

	end
end
