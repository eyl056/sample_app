class AddOrganizationReferenceToLeadStatuses < ActiveRecord::Migration[6.0]
  def change
    add_reference :lead_statuses, :organization, null: true, foreign_key: true
  end
end
