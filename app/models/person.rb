class Person < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create
  validates_presence_of :name, :on => :create
  validates_presence_of :surname, :on => :create
  validates :login, uniqueness: true, presence: true
end
