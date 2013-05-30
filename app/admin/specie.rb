ActiveAdmin.register Specie do
  index do
    column :name
    column 'Types', :specie_types_names
    column :base_hitpoints
    column :base_attack
    column :base_defense
    column :base_speed
    column :experience_function
    column :description
    default_actions
  end

  filter :name

  form do |f|
    f.inputs 'Specie Details' do
      f.input :name
      f.input :base_hitpoints
      f.input :base_attack
      f.input :base_defense
      f.input :base_speed
      f.input :specie_types, :as => :serialized_array, :collection => Type.list, :wrapper_html => { :class => 'check_boxes' }
      f.input :experience_function, :as => :select, :collection => ExperienceFunction.list, :include_blank => false
      f.input :description
      f.has_many :specie_moves do |g|
        g.inputs 'Species Moves' do
          g.input :move_id, :as => :select, :collection => Move.all, :include_blank => false
          g.input :level
          g.input :_destroy, :as => :boolean, :required => false, :label => "Remove"
        end
      end
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row ('Types') { |_| _.specie_types_names }
      row :base_hitpoints
      row :base_attack
      row :base_defense
      row :base_speed
      row :experience_function
      row :description
    end
    div :class => "panel" do
      h3 "Moves"
      if specie.specie_moves.any?
        div :class => "panel_contents" do
          div :class => "attributes_table" do
            table do
              tr do
                th do
                  "Name"
                end
                th do
                  "Level"
                end
              end
              tbody do
                specie.specie_moves.each do |specie_move|
                  tr do
                    td do
                      specie_move.name
                    end
                    td do
                      specie_move.level
                    end
                  end
                end
              end
            end
          end
        end
      else
        h3 "This specie has no moves."
      end
    end
    active_admin_comments
  end
end
