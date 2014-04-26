class Question < ActiveRecord::Base
    has_many :comments, as: :commentable
    has_many :votes, as: :voteable
    validates_presence_of :title, :user, :body
    attr_accessible :title, :body
    belongs_to :user
    has_many :answers

  def vote_count
    up_votes = self.votes.select {|vote| vote.vote_type == true}
    down_votes = self.votes.select {|vote| vote.vote_type == false}
    up_votes.length - down_votes.length
  end

  def order_answers_by_latest
    self.answers.order('created_at desc')
  end
end