node(:success) { true }
node(:info) { "Registration successful!" }
node :user do
 	partial("api/v1/users/show", :object => current_user)
end
