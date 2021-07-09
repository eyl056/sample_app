class AddLeadStatusIdToLead < ActiveRecord::Migration[6.0]
  def change
    add_column :leads, :lead_status_id, :integer
  end
end
