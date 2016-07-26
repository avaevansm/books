class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :genere
      t.string :isbn
      t.boolean :checked_out
      t.date :due_date

      t.timestamps null: false
    end
  end
end
