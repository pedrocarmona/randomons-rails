# Hack so that check_boxes show the selected values
# Thanks to https://groups.google.com/forum/#!msg/formtastic/OY734CMWpfw/EgUO3avIMCsJ
class SerializedArrayInput < Formtastic::Inputs::CheckBoxesInput
  def make_selected_values
    if object.respond_to?(method)
      object.send(method)
    else
      []
    end
  end
end
