class User < ApplicationRecord
  has_secure_password
      # Validating both email and username for uniqueness, disregarding case_sensitivity
    validates :username, :email, uniqueness: { case_sensitive: false }
end
