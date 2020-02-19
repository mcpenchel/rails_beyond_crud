class Restaurant < ApplicationRecord

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :stars, inclusion: { in: [1, 2, 3, 4, 5] }

  has_many :reviews, dependent: :destroy

end
