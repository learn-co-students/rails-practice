class Authorship < ApplicationRecord
  belongs_to :book
  belongs_to :author

  validates_uniqueness_of :book, scope: :author
  
end
