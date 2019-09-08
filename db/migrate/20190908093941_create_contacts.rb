class CreateContacts < ActiveRecord::Migration[5.2]
  def up
    create_table :contacts do |t|
      t.string :name
      t.string :phone
      t.integer :user_id

      t.timestamps
    end
    add_index :contacts, :user_id
  end

  def down
    drop_table :contacts
  end
end
