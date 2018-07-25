class RootComment < ApplicationRecord
  belongs_to :url
  belongs_to :user
end
