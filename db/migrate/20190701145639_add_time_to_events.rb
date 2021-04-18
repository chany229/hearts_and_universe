class AddTimeToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :year, :integer
    add_column :events, :month, :integer
    add_column :events, :day, :integer
  end
end
