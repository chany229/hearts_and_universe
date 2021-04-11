class Keyword < ApplicationRecord
  has_many :infos
  has_many :events, through: :infos
  has_many :chapters, through: :events
end
