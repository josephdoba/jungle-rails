class User < ApplicationRecord
  has_secure_password

  validates_presence_of :name
  validates_presence_of :email
  validates_uniqueness_of :email, case_sensitive: false
  validates_associated :password, :minimum => 5, :on => :create
  validates :confirmation_password, presence: true

  


end

# class User < ActiveRecord::Base

#   has_secure_password

# end
