class CreateOpportunities < ActiveRecord::Migration[6.0]
  def change
    create_table :opportunities do |t|
      t.integer :opportunity_id
      t.date :estimated_close
      t.float :confidence
      t.decimal :value
      t.text :notes

      t.timestamps
    end
  end
end
