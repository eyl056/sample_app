class CreateLeadActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :lead_activities do |t|
      t.integer :activity_type_id
      t.integer :created_by
      t.text :lead_notes_content
      t.integer :lead_email_group_id
      t.integer :lead_email_order
      t.integer :lead_email_thread_number
      t.string :lead_email_from
      t.string :lead_email_to
      t.string :lead_email_title
      t.text :lead_email_content

      t.timestamps
    end
  end
end
