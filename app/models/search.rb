class Search < ApplicationRecord

    def search_users
        users = User.all

        users = users.where(["name LIKE ?", "%#{name}%"]) if name.present?
        users = users.where(["email LIKE ?", email]) if email.present?
        users = users.where(["title LIKE ?", title]) if title.present?
        users = users.where(["phone LIKE ?", phone]) if phone.present?
        users = users.where(["status LIKE ?", status]) if status.present?
        
        return users
        

    end

end
