class Event < ApplicationRecord
  attr_accessor :chara_animals
  attr_accessor :refer_keywords
  belongs_to :chapter
  has_many :dramas
  has_many :charas, through: :dramas
  has_many :infos
  has_many :keywords, through: :infos
  acts_as_taggable
  acts_as_list scope: :chapter_id

  scope :default_order, -> { includes(:chapter).order('chapters.position asc, events.position asc') }

  before_save :create_dramas, :create_infos

  def create_dramas
    new_animals = self.chara_animals.split(' ')
    if self.charas.empty?
      old_animals = []
    else
      old_animals = self.charas.map(&:animal)
    end
    to_remove_animals = old_animals - new_animals
    to_add_animals = new_animals - old_animals

    to_remove_charas = Chara.where(animal: to_remove_animals)
    to_add_charas = Chara.where(animal: to_add_animals)

    self.charas.destroy to_remove_charas unless self.charas.empty?
    self.charas << to_add_charas
  end


  def create_infos
    new_names = self.refer_keywords.split(' ')
    if self.keywords.empty?
      old_names = []
    else
      old_names = self.keywords.map(&:name)
    end
    to_remove_names = old_names - new_names
    to_add_names = new_names - old_names

    to_remove_keywords = Keyword.where(name: to_remove_names)
    to_add_keywords = Keyword.where(name: to_add_names)

    self.keywords.destroy to_remove_keywords unless self.keywords.empty?
    self.keywords << to_add_keywords

    if to_add_keywords.count < to_add_names.count
      new_arr = to_add_names - to_add_keywords.map(&:name)
      new_arr.each do |item|
        self.keywords << Keyword.create(name: item)
      end
    end
  end
end
