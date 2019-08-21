class CreateVerifications < ActiveRecord::Migration[5.2]
  def change
    create_table :verifications do |t|
      t.string     :token
      t.datetime   :expires_at
      t.integer    :verification_type
      t.references :user

      t.timestamps
    end
  end
end
