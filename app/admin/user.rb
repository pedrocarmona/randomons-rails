ActiveAdmin.register User do
  index do
    column :name
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end

  filter :name
  filter :email

  form do |f|
    f.inputs "User Details" do
      f.input :name
      f.input :email
      if f.object.new_record?
        f.input :password
        f.input :password_confirmation
      end
      f.input :about
      f.has_many :user_items do |g|
        g.inputs "Items" do
          g.input :item_id, :as => :select, :collection => Item.all, :include_blank => false
          g.input :quantity
          g.input :_destroy, :as => :boolean, :required => false, :label => "Remove"
        end
      end
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :email
      row :authentication_token
      row :current_sign_in_at
      row :last_sign_in_at
      row :sign_in_count
      row :about
    end
    div :class => "panel" do
      h3 "Creatures"
      if user.creatures.any?
        div :class => "panel_contents" do
          div :class => "attributes_table" do
            table do
              tr do
                th "Name"
                th "Quantity"
              end
              tbody do
                user.creatures.each do |creature|
                  tr do
                    td creature.name
                    td creature.quantity
                  end
                end
              end
            end
          end
        end
      else
        h3 "This user has no creatures"
      end
    end
    div :class => "panel" do
      h3 "Items"
      if user.user_items.any?
        div :class => "panel_contents" do
          div :class => "attributes_table" do
            table do
              tr do
                th "Name"
                th "Quantity"
              end
              tbody do
                user.user_items.each do |user_item|
                  tr do
                    td user_item.name
                    td user_item.quantity
                  end
                end
              end
            end
          end
        end
      else
        h3 "This user has no items"
      end
    end
    active_admin_comments
  end
end
