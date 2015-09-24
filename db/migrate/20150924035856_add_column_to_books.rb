class AddColumnToBooks < ActiveRecord::Migration
  def change
  	add_column :books, :list_id, :integer
  end
end