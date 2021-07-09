class CreateContactDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_details do |t|
      t.integer :contact_id
      t.string :contact_detail_info
      t.string :contact_detail_type

      t.timestamps
    end
  end
end
