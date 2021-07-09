class AddUserIdToOpportunity < ActiveRecord::Migration[6.0]
  def change
    add_column :opportunities, :user_id, :integer
  end
end
