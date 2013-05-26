object @user
attributes :name, :email, :id   
attributes :authentication_token, :if => lambda { |user| user.id==current_user.id }
