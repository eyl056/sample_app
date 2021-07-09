class CreateOpportunityStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :opportunity_statuses do |t|
      t.integer :opportunity_status_id
      t.string :oppotunity_status_name
      t.string :process

      t.timestamps
    end
  end
end
