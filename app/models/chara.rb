class Chara < ApplicationRecord
  acts_as_list
  has_many :dramas
  has_many :events, through: :dramas
  has_many :chapters, through: :events
end
