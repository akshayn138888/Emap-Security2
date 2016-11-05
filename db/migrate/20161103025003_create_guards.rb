class CreateGuards < ActiveRecord::Migration
  def change
    drop_table :guards
    create_table :guards do |t|
      t.string :email
      t.string :password
      t.timestamps
    end
  end
end
