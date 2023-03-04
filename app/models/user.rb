class User < ApplicationRecord
  before_save { self.email = email.downcase }
  before_save { self.username = username.capitalize }
  has_many :articles

  validates :username, :email, presence: true, uniqueness: { case_sensitive: false }
  validates :username, length: {minimum: 3, maximum: 25}
  validates :email, length: {maximum: 105}, format: { with: URI::MailTo::EMAIL_REGEXP }

  has_secure_password
end
