class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.integer :organization_id
      t.string :organization_name

      t.timestamps
    end
  end
end
