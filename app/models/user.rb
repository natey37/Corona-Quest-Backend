class User < ApplicationRecord
    has_many :characters
    
    has_secure_password
    validates :username, presence: true, uniqueness: true
    # validates :password,
    #             length: { minimum: 6 },
    #         if: -> { new_record? || !password.nil? }




    # has_secure_password
    
    # validates :username, uniqueness: { case_sensitive: false }
    # # validates_presence_of :password
    
   

   
end

  