class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.string     :name,               null: false
      t.text       :description,        null: false
      t.integer    :min_booking_time,   null: false
      t.text       :previous_clients
      t.text       :audio_samples
      t.time       :opening_time,       null: false
      t.integer    :studio_type,        default: 0
      t.time       :closing_time,       null: false
      t.text       :amenities,          null: false
      t.text       :main_equipment,     null: false
      t.text       :rules,              null: false
      t.text       :address,            null: false
      t.string     :landmark,           default: ''
      t.string     :lat,                null: false
      t.string     :lng,                null: false
      t.float      :hourly_price,       null: false
      t.boolean    :aud_eng,            null: false
      t.references :user

      t.timestamps
    end
  end
end
