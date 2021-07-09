class AddLeadIdToLeadActivity < ActiveRecord::Migration[6.0]
  def change
    add_column :lead_activities, :lead_id, :integer
  end
end
