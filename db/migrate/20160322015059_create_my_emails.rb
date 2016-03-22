class CreateMyEmails < ActiveRecord::Migration
  def change
    create_table :my_Eemails do |t|
      t.string :eamil
      t.string :ip
      t.integer :state

      t.timestamps null: false
    end
  end
end
