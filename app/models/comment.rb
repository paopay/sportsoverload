class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  belongs_to :user
  validates_presence_of :body
  attr_accessible :body

  def most_recent_comments_first(question)
    question.comments.order('created_at asc')
  end

end