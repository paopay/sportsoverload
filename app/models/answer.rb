class Answer < ActiveRecord::Base
    has_many :comments, as: :commentable
    attr_accessible :body
    belongs_to :question
    belongs_to :user
    validates_presence_of :body
end