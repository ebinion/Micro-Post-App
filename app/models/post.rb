class Post < ActiveRecord::Base
  attr_accessible :post
  has_one :user
end
