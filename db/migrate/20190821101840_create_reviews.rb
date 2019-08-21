class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :rating
      t.string :reviewer_type
      t.bigint :reviewer_id
      t.boolean :verified, default: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
