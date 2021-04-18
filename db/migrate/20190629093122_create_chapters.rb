class CreateChapters < ActiveRecord::Migration[6.1]
  def change
    create_table :chapters do |t|
      t.integer :position
      t.string :title
      t.string :theme

      t.timestamps
    end
  end
end
