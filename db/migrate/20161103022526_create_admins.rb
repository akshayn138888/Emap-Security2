class CreateAdmins < ActiveRecord::Migration
  def change
    drop_table :admins
    create_table :admins do |t|
      t.string :email
      t.string :password
      t.timestamps
    end
  end
end
