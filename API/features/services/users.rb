module Rest
    class Users
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']

        def get_users
            self.class.get('/api/Users')
        end      
        
        def get_user(id)
            self.class.get("/api/Users/#{id}")
        end    
        
        def post_users(user)
            self.class.post('/api/Users', body: user.to_json)
        end
    end
end
