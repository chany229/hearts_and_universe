class CreateKeywords < ActiveRecord::Migration[6.1]
  def change
    create_table :keywords do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
