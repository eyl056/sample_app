class Opportunity < ApplicationRecord
  belongs_to :organization
  has_many :contacts
  belongs_to :lead
end
