object @user
attributes :id, :name, :email, :about
attributes :authentication_token, :if => lambda { |user| user.id == current_user.id }

child :creatures do
	print "\n\n\nola\n\n\n"
	extends "api/v1/creatures/index"
end
