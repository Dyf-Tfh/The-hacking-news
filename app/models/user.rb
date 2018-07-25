class User < ApplicationRecord
  has_many :rootcomments
  has_many :childcomments
  has_many :urls
end
