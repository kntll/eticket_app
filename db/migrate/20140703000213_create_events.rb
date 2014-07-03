class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :venue
      t.date :date

      t.timestamps
    end
  end
end
