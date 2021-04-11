class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :position
      t.integer :chapter_id
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
