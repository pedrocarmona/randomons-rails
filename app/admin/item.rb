ActiveAdmin.register Item do
  index do
    column :specie
    column :name
    column :price
    default_actions
  end

  filter :specie

  form do |f|
    f.inputs 'Item Details' do
      f.input :specie_id, :as => :select, :collection => Specie.all
      f.input :name
      f.input :price
    end
    f.actions
  end

  show do
    attributes_table do
      row :specie
      row :name
      row :price
    end
    active_admin_comments
  end
end
