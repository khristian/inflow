class User < ActiveRecord::Base
 
 # Get data from Hash returned from provider.
 def self.from_omniauth(auth)
  where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
 end

 # Create session, based on provider.
 def self.create_from_omniauth(auth)
  create! do |user|
   if user.provider == "twitter"
    user.provider = auth["provider"]
    user.uid = auth["uid"]
    user.name = auth["info"]["nickname"]
   else
    user.provider = auth["provider"]
    user.uid = auth["uid"]
    user.name = auth["info"]["nickname"]
   end 
  end
 end

end

