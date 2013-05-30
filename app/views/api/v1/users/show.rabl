object @user
attributes :id, :name, :email, :about, :avatar
attributes :authentication_token, :if => lambda { |user| user.id == current_user.id }

node :avatar do |user|
  user.avatar(:medium)
end

child :creatures do
  extends "api/v1/creatures/index"
end

child :items do
	print "\n\n\nola\n\n\n"
	extends "api/v1/items/index"
end
