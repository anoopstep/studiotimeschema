class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots do |t|
      t.date :booking_date , null: false
      t.time :time_from , null: false
      t.time :time_to   , null: false
      t.references :booking

      t.timestamps
    end
  end
end
