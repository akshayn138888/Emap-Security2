class CreateAdmins < ActiveRecord::Migration
  def change
    
    create_table :admins do |t|
      t.string :email
      t.string :password
      t.timestamps
    end
  end
end
