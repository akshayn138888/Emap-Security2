class AddAgeToSupervisors < ActiveRecord::Migration
  def change
    add_column :supervisors, :age, :string
  end
end
