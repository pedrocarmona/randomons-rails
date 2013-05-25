ActiveAdmin.register Move do
  index do
    column :name
    column 'Types', :move_types_names
    column :attack
    column :accuracy
    column 'Status', :status_name
    column :status_probability
    column :description
    default_actions
  end

  filter :name

  form do |f|
    f.inputs 'Move Details' do
      f.input :name
      f.input :move_types, :as => :serialized_array, :collection => Type.list, :wrapper_html => { :class => 'check_boxes' }
      f.input :attack
      f.input :accuracy, :step => :any
      f.input :status, :as => :select, :collection => Status.list
      f.input :status_probability, :step => :any
      f.input :description
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row ('Types') { |_| _.move_types_names }
      row :attack
      row :accuracy
      row('Status') { |_| _.status_name }
      row :status_probability
      row :description
    end
    active_admin_comments
  end
end
