class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, 
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[github]

  def self.find_or_create_user(auth)
    where(email: auth.info.email).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.skip_confirmation!
    end
  end
end
