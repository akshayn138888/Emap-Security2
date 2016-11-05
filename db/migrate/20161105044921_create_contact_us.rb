class CreateContactUs < ActiveRecord::Migration
  def change
    create_table :contact_us do |t|

      t.timestamps null: false
    end
  end
end
