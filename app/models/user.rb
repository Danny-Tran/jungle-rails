class User < ActiveRecord::Base
    has_secure_password
    validates :email, uniqueness: {case_sensitive:false}
    # validates :first_name, :last_name
    validates :password, length: {minimum:5}

end
