ActiveAdmin.register Building do
  index do
    column :type
    column :name
    column :latitude
    column :longitude
    default_actions
  end

  filter :type, :as => :select, :collection => Building::TYPES
  filter :name
  filter :latitude
  filter :longitude

  form do |f|
    f.inputs 'Building Details' do
      f.input :type, :as => :select, :collection => Building::TYPES, :include_blank => false
      f.input :name
      f.input :latitude
      f.input :longitude
      f.has_many :building_items do |g|
        g.inputs "Items" do
          g.input :item_id, :as => :select, :collection => Item.all, :include_blank => false
          g.input :price
          g.input :_destroy, :as => :boolean, :required => false, :label => "Remove"
        end
      end
    end
    f.actions
  end

  show do
    attributes_table do
      row :type
      row :name
      row :latitude
      row :longitude
    end
    div :class => "panel" do
      h3 "Items"
      if building.building_items.any?
        div :class => "panel_contents" do
          div :class => "attributes_table" do
            table do
              tr do
                th "Name"
                th "Price"
              end
              tbody do
                building.building_items.each do |building_item|
                  tr do
                    td building_item.name
                    td building_item.price
                  end
                end
              end
            end
          end
        end
      else
        h3 "This building has no items"
      end
    end
    active_admin_comments
  end
end
