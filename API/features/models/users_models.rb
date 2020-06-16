class UsersModel
    attr_accessor :id, :user_name, :password

    def user_hash
        {
           ID: @id,
           UserName: @user_name,
           Password: @password
        }
    end
end
