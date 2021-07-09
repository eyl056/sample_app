class Contact < ApplicationRecord
  belongs_to :organization
  has_many :contact_details
  belongs_to :Opportunity
end
