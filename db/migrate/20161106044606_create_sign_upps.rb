class CreateSignUpps < ActiveRecord::Migration
  def change
    create_table :sign_upps do |t|
      t.string :first_name 
      t.string :last_name
      t.string :password_digest
      t.string :email

      t.timestamps null: false
    end
  end
end
