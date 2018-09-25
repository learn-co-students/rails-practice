class Author < ApplicationRecord
  has_many :authorships
  has_many :books, through: :authorships

  validates :name, presence: true, uniqueness: true
  validates :birth_year, presence: true, numericality: {
    greater_than: 0,
    only_integer: true,
    less_than_or_equal_to: DateTime.now.year,

  }

end
