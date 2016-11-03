class CreateSupervisors < ActiveRecord::Migration
  def change
    # drop_table :supervisors
    create_table :supervisors do |t|
      t.string :email
      t.string :password
      t.timestamps
    end
  end
end
