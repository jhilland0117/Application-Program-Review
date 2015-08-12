class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 	
 devise :omniauthable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:username],
	 :omniauth_providers => [:google_oauth2]

    belongs_to :user_role
    has_and_belongs_to_many :units
    has_and_belongs_to_many :apr_reports

    validates_associated :units, :user_roles
    validates_presence_of :username, :first_name, :last_name

    def self.find_first_by_auth_conditions(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions).where(["lower(username) = :value", { :value => login.downcase }]).first
      else
        where(conditions).first
      end
    end

  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(:provider => access_token.provider, :uid => access_token.uid ).first
    if user
      return user
    else
      registered_user = User.where(:email => access_token.info.email).first
      if registered_user
	return registered_user
      else
	user = User.create(username: data["name"],
	  provider:access_token.provider,
	  email: data["email"],
	  uid: access_token.uid ,
	  password: Devise.friendly_token[0,20],
	)
	      end
	   end
	end

end
