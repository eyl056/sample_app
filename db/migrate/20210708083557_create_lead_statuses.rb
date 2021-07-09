class CreateLeadStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :lead_statuses do |t|
      t.integer :lead_status_id
      t.string :lead_status_name

      t.timestamps
    end
  end
end
