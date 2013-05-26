ActiveAdmin.register Population do
  index do
    column :specie
    column :latitude
    column :longitude
    column :radius
    default_actions
  end

  filter :specie_id

  form do |f|
    f.inputs 'Population Details' do
      f.input :specie_id, :as => :select, :collection => Specie.all, :include_blank => false
      f.input :latitude
      f.input :longitude
      f.input :radius
    end
    f.actions
  end

  show do
    attributes_table do
      row :specie_id
      row :latitude
      row :longitude
      row :radius
    end
    active_admin_comments
  end
end
