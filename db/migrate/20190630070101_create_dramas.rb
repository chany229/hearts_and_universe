class CreateDramas < ActiveRecord::Migration[6.1]
  def change
    create_table :dramas do |t|
      t.integer :chara_id
      t.integer :event_id
      t.string :desc

      t.timestamps
    end
  end
end
