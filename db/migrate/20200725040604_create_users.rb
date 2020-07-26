class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :email_id
      t.string :password_digest
      t.string :city
      t.boolean :email_verify

      t.timestamps
    end
  end
end
