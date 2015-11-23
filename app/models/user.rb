class User < Person
  has_and_belongs_to_many :categories, :class_name => "Category",  :join_table => :categories_users
  has_and_belongs_to_many :products
end
