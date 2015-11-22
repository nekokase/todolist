class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :category_id
      t.integer :want_id
      t.integer :order
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :do_miniute
      t.integer :complete_div

      t.timestamps null: false
    end
  end
end
