class Chapter < ApplicationRecord
  acts_as_list
  has_many :events, -> { order(position: :asc) }
  has_many :charas, through: :events
  has_many :keywords, through: :events
end
