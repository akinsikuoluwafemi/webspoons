class User < ApplicationRecord
    
    def self.search(search)
        if search
            where(["name LIKE ?", "%#{search}%" ])
        else
            all
        end
    end
    
    
    validates :name, presence: true
    validates :name, length: { minimum: 4, maximum: 24}

    validates :title, presence: true

    validates :phone, presence: true

    # validates :status, presence: true



    validates :email, presence: true
    validates :email, length: { maximum: 255}

    validates :email, uniqueness: true

    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i


end
