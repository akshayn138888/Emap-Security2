class CreateSupervisors < ActiveRecord::Migration
  def change
    create_table :supervisors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :admin_id
      t.timestamps null: false
    end
  end
end
