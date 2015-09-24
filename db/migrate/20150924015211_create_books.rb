class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.integer :pages
      t.boolean :finished, default: false

      t.timestamps
    end
  end
end
