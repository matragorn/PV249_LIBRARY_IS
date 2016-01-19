class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.string :address
      t.string :contact

      t.timestamps null: false
    end
  end
end
