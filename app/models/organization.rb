class Organization < ApplicationRecord
  
  has_many :users
  has_many :lead_statuses
  has_many :opportunity_statuses
  has_many :contacts
  has_many :opportunities
  has_many :leads
  
end
