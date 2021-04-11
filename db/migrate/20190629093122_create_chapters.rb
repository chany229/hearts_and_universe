class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.integer :position
      t.string :title
      t.string :theme

      t.timestamps
    end
  end
end
