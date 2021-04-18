class CreateInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :infos do |t|
      t.integer :event_id
      t.integer :keyword_id
      t.string :desc

      t.timestamps
    end
  end
end
