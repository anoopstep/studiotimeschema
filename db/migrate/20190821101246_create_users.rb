class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string  :first_name,      null: false
      t.string  :last_name,       null: false
      t.text    :bio,             default: ''
      t.string  :website,         default: ''
      t.string  :facebook_url, default: ''
      t.string  :twitter_url,  default: ''
      t.string  :instagram_url,    default: ''
      t.string  :stream_url,      default: ''
      t.string  :email,           null: false
      t.string  :password_digest, null: false
      t.string  :mobile,          default: ''
      t.string   :stripe_customer_id, null: false
      t.boolean :email_verified,  default: false
      t.boolean :mobile_verified, default: false
      t.timestamps
    end
  end
end
