class Comment < ApplicationRecord
	#attr_accesssor :body, :commenter, :post
  	belongs_to :post
end
