class Post < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  has_many :comments
  scope :five_days_ago, lambda { where("created_at >= :date", :date => 5.days.ago) }
  scope :later, lambda { where("created_at <= :date", :date => 5.days.ago) }
end
