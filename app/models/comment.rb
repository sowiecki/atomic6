class Comment < ActiveRecord::Base
	validates :content, :commenter_id, presence: true
	validates :title, length: { maximum: 30 }
	validates :content, length: { maximum: 500 }

  belongs_to :commenter, class_name: "User"
  belongs_to :blog, foreign_key: "blog_id"
end
