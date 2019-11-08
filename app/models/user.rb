class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 15}
    validates :email, presence: true, format: {with: /^[a-zA-Z0-9.!\/$%&*+\/=?^_{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/}
    validates :password, length: {in: 8..32}, format: {with: /(?=.*[0-9])(?=.*[a-zA-Z])/}
    validates :password_confirmation, length: {in: 8..32}, format: {with: /(?=.*[0-9])(?=.*[a-zA-Z])/}
    
    has_secure_password
end
