class UpdateColumnValueFromBooks < ActiveRecord::Migration[6.0]
  def change
    change_column :books, :value, :decimal, :precision => 12, scale: 2
  end
end
