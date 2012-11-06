class User < ActiveRecord::Base
  attr_accessible :email, :tags, :username, :uid, :provider
  
  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.username = auth["info"]["name"]
      user.email = auth["info"]["email"]
    end  
  end

  # def my_profile
  #   response = @access_token.get("http://api.linkedin.com/v1/people/~?format=json")
  #   @data = JSON.parse(response)
  # end
  
end
