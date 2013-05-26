node(:success) { true }
node(:info) { "Logged in" }
node :user do
 	partial("api/v1/users/show", :object => current_user)
end
