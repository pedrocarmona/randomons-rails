ActiveAdmin.register Population do
  index do
    column :specie
    column :latitude
    column :longitude
    column :radius
    column :hidden
    default_actions
  end

  filter :specie
  filter :latitude
  filter :longitude
  filter :radius
  filter :hidden

  form do |f|
    f.inputs 'Population Details' do
      f.input :specie_id, :as => :select, :collection => Specie.all, :include_blank => false
      f.input :latitude
      f.input :longitude
      f.input :radius
      f.input :hidden
    end
    f.actions
  end

  show do
    attributes_table do
      row :specie
      row :latitude
      row :longitude
      row :radius
      row :hidden
    end
    active_admin_comments
  end
end
