class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.references :author, index: true, foreign_key: true
      t.references :office, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
