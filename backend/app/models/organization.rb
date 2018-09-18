class Organization < ActiveRecord::Base
  belongs_to :user
  accepts_nested_attributes_for :user

  validates :name, presence: true, uniqueness: true
  validates :url, presence: true, uniqueness: true
  validates :size, presence: true
  # because an organization has to have an admin user
  # validates :user_id, presence: true
  validates :blurb, length: { maximum: 300 }
end
