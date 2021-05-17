class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, format: { with: }
    validates :email, presence: true, uniqueness: true, format: { with: }
    has_secure_password
end
