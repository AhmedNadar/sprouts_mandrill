class Comment < ActiveRecord::Base
  # associations
  belongs_to :post
end
