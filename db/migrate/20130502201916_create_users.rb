class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :nickname
      t.string :rol
      t.text :description
      t.string :password_digest
      t.string :remember_token
      t.integer :user_type_id

      t.timestamps
    end
  end
end
