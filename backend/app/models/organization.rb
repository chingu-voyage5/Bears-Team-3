class Organization < ActiveRecord::Base
  has_secure_password
  # has_many :donations
  # has_many :donors, through: :donations
  # has_many :oragnizations_causes
  # has_many :causes, through: organizations_causes
end
