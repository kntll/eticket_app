class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :pdf
      t.float :price
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
