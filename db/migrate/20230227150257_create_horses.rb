class CreateHorses < ActiveRecord::Migration[7.0]
  def change
    create_table :horses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :breed
      t.string :specialty
      t.string :city
      t.string :age
      t.string :sex
      t.string :price

      t.timestamps
    end
  end
end
