class CreateAnketa < ActiveRecord::Migration
  def change
    create_table :anketa do |t|
      t.string :name_store
      t.string :email

      t.timestamps null: false
    end
  end
end
