class AddDescriptionToHorses < ActiveRecord::Migration[7.0]
  def change
    add_column :horses, :description, :text
  end
end
