class CreateCharas < ActiveRecord::Migration[5.2]
  def change
    create_table :charas do |t|
      t.integer :position
      t.string :name
      t.string :animal
      t.string :ability
      t.string :ability_b
      t.string :group_before
      t.string :group_now
      t.string :group_after
      t.string :target
      t.string :theme
      t.string :color1
      t.string :color2
      t.string :color3
      t.string :shape
      t.string :sex
      t.integer :age
      t.integer :height
      t.string :skin1
      t.string :skin2
      t.string :eye_color
      t.string :hair_color
      t.string :desc

      t.timestamps
    end
  end
end
