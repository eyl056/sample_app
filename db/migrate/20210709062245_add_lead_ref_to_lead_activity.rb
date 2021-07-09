class AddLeadRefToLeadActivity < ActiveRecord::Migration[6.0]
  def change
    add_reference :lead_activities, :lead_activity, null: false, foreign_key: true
  end
end
