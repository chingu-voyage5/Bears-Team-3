class Organization < ActiveRecord::Base
  has_secure_password

  validates :name, presence: true, uniqueness: true
  validates :url, presence: true, uniqueness: true
  validates :size, presence: true
  validates :password, presence: true
  # because an organization has to have an admin user
  validates :user_id, presence: true
end
