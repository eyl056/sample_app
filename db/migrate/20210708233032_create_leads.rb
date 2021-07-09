class CreateLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :leads do |t|
      t.integer :lead_id
      t.string :lead_company_name
      t.string :lead_contact_name
      t.integer :assigned_by
      t.integer :created_by

      t.timestamps
    end
  end
end
