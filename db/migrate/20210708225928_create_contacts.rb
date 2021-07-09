class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.integer :contact_id
      t.string :contact_name
      t.string :contact_title
      t.string :contact_detail_type
      t.string :contact_company

      t.timestamps
    end
  end
end
