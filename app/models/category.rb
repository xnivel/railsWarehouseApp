class Category < ActiveRecord::Base
  has_many :products
  has_and_belongs_to_many :users, :class_name => "User",  :join_table => :categories_users
end
