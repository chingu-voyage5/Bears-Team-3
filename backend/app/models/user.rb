class User < ApplicationRecord
  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true
  # would like to validate via verification email to user
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { in: 6..20 }
end
