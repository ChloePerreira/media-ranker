class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.integer :vote
      t.string :author

      t.timestamps
    end
  end
end
