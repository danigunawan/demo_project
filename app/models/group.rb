class Group < ActiveRecord::Base
	has_many :memberships, :dependent => :destroy
  	has_many :users, through: :memberships
    has_many :posts
end
