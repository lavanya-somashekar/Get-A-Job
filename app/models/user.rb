class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]
  enum :usertype, { Recruiter: 0, Candidate: 1 }   
  has_many :jobs , dependent: :destroy 

  def self.from_omniauth(auth)
    data = auth.info
    user = User.where(email: data['email']).first
   
    unless user
        user = User.create(
          username: data['name'],
           email: data['email'],
           password: Devise.friendly_token[0,20],
           usertype: "Candidate"
        )
    end
    user 
end 
end


# GOOGLE_OAUTH_CLIENT_ID:457564183019-2r9muqbff2pmktdihgel6tq3n5tmtpck.apps.googleusercontent.com
# GOOGLE_OAUTH_CLIENT_SECRET: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