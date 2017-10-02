class User < ApplicationRecord
  has_secure_password

  # Model associations
  has_many :bucketlists, foreign_key: :created_by
  # Validations
  validates_presence_of :username, :email, :password_digest
end
