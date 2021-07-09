class Lead < ApplicationRecord
  belongs_to :organization
  has_many :opportunities
  has_many :lead_activities
end
