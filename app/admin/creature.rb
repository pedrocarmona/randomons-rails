ActiveAdmin.register Creature do
  index do
    column :user
    column :specie
    column :name
    column :hitpoints
    column :attack
    column :defense
    column :speed
    column :growth
    column :level
    column :current_hitpoints
    column :current_experience
    column :status
    column :preference
    default_actions
  end

  filter :user
  filter :specie

  form do |f|
    f.inputs 'Creature Details' do
      f.input :user_id, :as => :select, :collection => User.all, :include_blank => false
      f.input :specie_id, :as => :select, :collection => Specie.all, :include_blank => false
      f.input :name
      f.input :hitpoints
      f.input :attack
      f.input :defense
      f.input :speed
      f.input :growth
      f.input :level
      f.input :current_hitpoints
      f.input :current_experience
      f.input :status
      f.input :preference
    end
    f.actions
  end

  show do
    attributes_table do
      row :specie
      row :user
      row :name
      row :hitpoints
      row :attack
      row :defense
      row :speed
      row :growth
      row :level
      row :current_hitpoints
      row :current_experience
      row :status
      row :preference
    end
    active_admin_comments
  end
end
