class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :password, length: {in: 8..32}
    validates :password_confirmation, length: {in: 8..32}
    
    has_secure_password
end
